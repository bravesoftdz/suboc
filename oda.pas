unit oda;

interface
implementation
{

type
     TDatosTabla = class
   public
      sTableName: string;
      
      oIndices  : TStringList;
      oFields   : TStringList;
      oTriggers : TStringList;
      oConst    : TStringList;
                              
      oLinesView: TStringList;

      bEsView   : Boolean;
      
      bDropPK   : Boolean;

      constructor Create;             
      destructor  Destroy; override;  
   end;
   
   TDatosDicc = class
   public
      sFieldName : string;
      sCaption   : string;
   end;

   TDatosField = class
   public
      sFieldName : string;
      sType      : string;
      iType      : TFieldType;
      iSize      : Integer;
      iPrec      : Integer;
      iScale     : Integer;
      bNullable  : Boolean;

      sDef       : string;
      
      sConstraintName: string;
      
      function EsTexto: Boolean;  //funcion Si el campo almacena un String
      begin
        Result := (iType = ftString); //  or (iType = ftMemo);
      end;
   end; 

   TDatosIndex = class
   public
      sIndexName  : string;
      sIndexFields: string;  // separados por comas

      oFields     : TStringList;

      bDrop       : Boolean;

      constructor Create;
      destructor Destroy; override;


   end;



var
   oADOTablas          : TStringList;
   oADOProcs           : TStringList;
   oADODicc            : TStringList;




implementation

constructor TDatosTabla.Create;
begin
   inherited Create;
   oIndices  := TStringList.Create;
   oFields   := TStringList.Create;
   oTriggers := TStringList.Create;
   oConst    := TStringList.Create;

   oIndices.CaseSensitive  := False;
   oFields.CaseSensitive   := False;
   oTriggers.CaseSensitive := False;
   oConst.CaseSensitive    := False;
end;

destructor TDatosTabla.Destroy;
begin
   DestroyStringList(oIndices);
   DestroyStringList(oFields);
   DestroyStringList(oTriggers);
   DestroyStringList(oConst);

   if Assigned(oLinesView) then
      oLinesView.Free;

   inherited Destroy;
end;

constructor TDatosIndex.Create;
begin
   inherited Create;
   oFields := TStringList.Create;
end;

destructor TDatosIndex.Destroy;
begin
   oFields.Free;
   inherited Destroy;
end;


procedure TokenizeString(const S: String; const cDelimiter: Char; oTokens: TStringList);
var
   i,
   iLen     : Integer;
   sCurToken: String;
begin
   oTokens.Clear;

   sCurToken:='';

   iLen := Length(S);
   for i := 1 to iLen do
   begin
      if ( S[i] = cDelimiter ) then
      begin
         oTokens.Add(Trim(sCurToken));
         sCurToken := '';
      end
      else
         sCurToken := sCurToken + S[i];
   end;
   oTokens.Add(Trim(sCurToken));
end;

//Función que se le pasa un tipo de campo SQL-SERVER y devuelve el tipo en ADO (OdaADO)

procedure GetTypeADO( sType: string; var iType: TFieldType );
begin
   iType      := ftUnknown;
   //Por qué no utilizar Case??
   if ( sType = 'int' ) then
      iType      := ftInteger
   else if ( sType = 'smallint' ) then
      iType      := ftWord
   else if ( sType = 'nvarchar' ) then
      iType      := ftString
   else if ( sType = 'varchar' ) then
      iType      := ftString
   else if ( sType = 'char' ) then
      iType      := ftString
   else if ( sType = 'nchar' ) then
      iType      := ftString
   else if ( sType = 'text' ) then
      iType      := ftMemo
   else if ( sType = 'ntext' ) then
      iType      := ftMemo
   else if ( sType = 'image' ) then
      iType      := ftBlob
   else if ( sType = 'datetime' ) then
      iType      := ftDateTime
   else if ( sType = 'smalldatetime' ) then
      iType      := ftDate
   else if ( sType = 'money' ) then
      iType      := ftCurrency
   else if ( sType = 'smallmoney' ) then
      iType      := ftCurrency
   else if ( sType = 'decimal' ) then
      iType      := ftBCD
   else if ( sType = 'numeric' ) then
      iType      := ftBCD
   else if ( sType = 'float' ) then
      iType      := ftFloat
   else if ( sType = 'real' ) then
      iType      := ftFloat
   else if ( sType = 'binay' ) then
      iType      := ftBytes
   else if ( sType = 'varbinay' ) then
      iType      := ftVarBytes
   else
end;

//Carga una tabla concreta en el diccionario aTablasDic y aTablasDicPerfil (OdaLibDicc)
function  ADOCargarTablaDic( sTableName   : string; bPerfil: Boolean ): Boolean;
var
   i : Integer;
begin
   Result := False;

   sTableName := LowerCase(sTableName);

   for i := 0 to High(aTablasDic) do             //Recorre todo el array
    begin
       if ( aTablasDic[i] = sTableName ) then     //Si lo encuentra devuelve cierto
       begin
          Result := True;
          Break;                     //Si lo encuentra rompe el for. Mal. While mejor
       end;
    end;
end;


procedure ADOSetSQLResync( oBADODataSet : TBetterADODataSet; 
                           sTableName   : string;
                           sView        : string;
                           bRead        : Boolean );
var
   iIndex      : Integer;
   i           : Integer;
   oDatosTabla : TDatosTabla;
   oDatosIndex : TDatosIndex;
   oDatosField : TDatosField;
   oSQLResync  : TStringList;

   oField      : TField;
   
   sFieldName  : string;
   _sFieldName : string;

   _oADOTablas : TStringList;
begin

   _oADOTablas:= oADOTablas;

   if not Assigned(_oADOTablas) then
      raise Exception.Create('ADOSetSQLResync: No se ha cargado el diccionario.');

   if sTableName = '' then
      raise Exception.Create('ADOSetSQLResync: TBetterADODataSet '+oBADODataSet.Name+' nombre consulta vacío');
      
   iIndex := _oADOTablas.IndexOf( sTableName );
   if iIndex = -1 then
      raise Exception.Create('ADOSetSQLResync: No se ha encontrado la tabla '+sTableName);
      
   oDatosTabla := TDatosTabla(_oADOTablas.Objects[iIndex]);
   if not Assigned(oDatosTabla) then
      raise Exception.Create('ADOSetSQLResync: Los datos de diccionario de tabla: '+sTableName+' no han sido cargados.');
   
   iIndex := 0;
   if (iIndex = -1) or (oDatosTabla.oIndices.Count = 0) then
      raise Exception.Create('ADOSetSQLResync:  No se ha encontrado el índice primario en la tabla '+sTableName);

   oDatosIndex := TDatosIndex(oDatosTabla.oIndices.Objects[iIndex]);
   if (iIndex = 0) and (Copy(oDatosIndex.sIndexName, 1, 2) <> 'PK') then
      raise Exception.Create('ADOSetSQLResync:  Indice primario '+oDatosIndex.sIndexName+' en la tabla '+sTableName+' incorrecto.');
      
   oSQLResync  := TStringList.Create;
   try //(*)
      if ( sView <> '' ) then
      begin
         oSQLResync.Add( 'SELECT * FROM '+sView )
      end   
      else
      begin   
         oSQLResync.Add( 'SELECT * FROM '+sTableName );
      end;         
      
      oDatosIndex := TDatosIndex(oDatosTabla.oIndices.Objects[iIndex]);
         
      for i := 0 to oDatosIndex.oFields.Count -1 do
      begin
         oDatosField := TDatosField(oDatosIndex.oFields.Objects[i]);

         if ( i = 0 ) then
         begin
            oSQLResync.Add( ' WHERE ( '+oDatosField.sFieldName+' = ?)');   
         end   
         else
         begin   
            oSQLResync.Add( ' AND ( '+oDatosField.sFieldName+' = ?)');   
         end;   
      end;

      if ( oBADODataSet.Resync_Command.Count = 0 ) then
         oBADODataSet.Resync_Command.Assign(oSQLResync);
         
      if ( oBADODataSet.Tag = 0 ) then
      begin
         oBADODataSet.CursorType      := ctKeySet;  // lo cambiar nada más abrirlo a ctStatic
         oBADODataSet.Update_Criteria := adCriteriaKey;
         oBADODataSet.RefreshType     := rtResyncCurrent;
      end;

      oBADODataSet.Unique_Table    := sTableName;

      if ( bRead ) then
      begin
         oBADODataset.CursorType     := ctKeySet; // ctOpenForwardOnly;
         oBADODataset.LockType       := ltReadOnly;
      end;   
   finally //(*)
      oSQLResync.Free;
   end;   
end;


procedure DestroyStringList( var oOrigen: TStringList; bFree: Boolean = True);
var
   oLista : TStringList;
begin
   if oOrigen = nil then
      Exit;
   while oOrigen.Count > 0 do
   begin
      if Assigned(oOrigen.Objects[0]) then
      begin
         if oOrigen.Objects[0] is TStringList then
         begin
            oLista := TStringList(oOrigen.Objects[0]);
            DestroyStringList( oLista );
         end
         else
            oOrigen.Objects[0].Free;
      end;
      oOrigen.Delete(0);
   end;
   if bFree then
   begin
      oOrigen.Free;
      oOrigen := nil;
   end;
end;


function ADOCargarDiccionario( oForm: TForm; bPerfil : Boolean ): Boolean;
//bPerfil indica si se está realizando la carga del diccionario del perfil OdaCashPlusPerfil 1ª Comp.
var
   oDatosTabla: TDatosTabla;       //Ver las estructuras externas en ANEXO1
   oDatosIndex: TDatosIndex;
   oDatosField: TDatosField;
   oDatosProc : TDatosProc;
   oDatosParam: TDatosParam;
   oDatosDicc : TDatosDicc;

   i             : Integer;
   j             : Integer;
   iIndex        : Integer;
   iPos          : Integer;
   iRowsAffected : Integer;
 
   sProcName  : string;
   sParamName : string;

   oFieldName : TField;
   oCaption   : TField;

   oSPGetFields: TADOStoredProc;
   oSPHelpIndex: TADOStoredProc;
   oSPGetParams: TADOStoredProc;

   oGetDicc    : TADOQuery;

   _oADOTablas : TStringList;
   _oADOProcs  : TStringList;
   _oADODicc   : TStringList;

   _oADOConnection: TADOConnection;
begin                           
   Result := False;
   
   //Inicialización de Datos Generales
   if ( not(bPerfil) ) then        
   begin
      _oADOTablas := oADOTablas;
      _oADOProcs  := oADOProcs;
      _oADODicc   := oADODicc;
   end       
   else
   begin
      _oADOTablas := oADOTablasPerfil;
      _oADOProcs  := oADOProcsPerfil;
      _oADODicc   := oADODiccPerfil;
   end;

   
  //Si existen las estructuras, se destruyen (por si algo estuviera cargado en mem)
   if ( Assigned(_oADOTablas) ) then
      DestroyStringList(_oADOTablas);
   
   _oADOTablas := TStringList.Create;
   _oADOTablas.CaseSensitive := False;

   if ( Assigned(_oADOProcs) ) then
      DestroyStringList(_oADOProcs);
 
   _oADOProcs  := TStringList.Create;
   _oADOProcs.CaseSensitive := False;
   
   if ( Assigned(_oADODicc) ) then
      DestroyStringList(_oADODicc);

   _oADODicc  := TStringList.Create;
   _oADODicc.CaseSensitive := False;
   
   if ( not bPerfil ) then
      _oADOConnection := oADOConnection
   else
      _oADOConnection := oADOConnectionPerfil; 
  
   Result := _oADOConnection.Connected; //Resultado de la function principal (Conex State).Ojooo!! 
   if ( not Result ) then
      Exit;                                     
      


   oSPGetFields            := TADOStoredProc.Create( oForm );   
   oSPGetFields.LockType   := ltReadOnly;
   oSPGetFields.Connection := _oADOConnection;
                                                             
   oSPHelpIndex            := TADOStoredProc.Create( oForm );   
   oSPHelpIndex.LockType   := ltReadOnly;
   oSPHelpIndex.Connection := _oADOConnection;
                                                             
   oSPGetParams            := TADOStoredProc.Create( oForm );   
   oSPGetParams.LockType   := ltReadOnly;
   oSPGetParams.Connection := _oADOConnection;

   oGetDicc                := TADOQuery.Create( oForm );   
   oGetDicc.LockType       := ltReadOnly;
   oGetDicc.Connection     := _oADOConnection;
   oGetDicc.SQL.Text       := 'SELECT * FROM ocdicc';
   
   try //(**)           
      try //(*)
         oSPGetFields.ProcedureName := 'PR_get_fields';
         oSPGetFields.Parameters.CreateParameter( 'tablename',
                                                 ftString,
                                                 pdInput,
                                                 65,
                                                 Null );
         oSPGetFields.Prepared := True;
      
         oSPHelpIndex.ProcedureName := 'sp_helpindex';
         oSPHelpIndex.Parameters.CreateParameter( 'name',
                                                 ftString,
                                                 pdInput,
                                                 776,
                                                 Null );
         oSPHelpIndex.Prepared := True;
      
         oSPGetParams.ProcedureName := 'pr_get_parametros';
         oSPGetParams.Parameters.CreateParameter( 'name',
                                                  ftString,
                                                  pdInput,
                                                  776,
                                                  Null );
         oSPGetParams.Prepared := True;
                     
         _oADOConnection.GetTableNames( _oADOTablas );
         for i := 0 to _oADOTablas.Count -1 do
         begin
           {
             if ( Pos( ',' + LowerCase(_oADOTablas[i]) + ',' , 
                 ',ocemp,ocalm,ocniv,ocnivnro,ocparm,octem,ocart,ocartser,ocarttal,ocarttar,
                  ocartbar,ocartalm,ocartreb,ocartpro,ocartcol,ocartacu,ocartofe,ocmovart,ocpedproart,
                  ocpro,ocproofe,occtador,occolor,ocgrpcol,ocproart,' ) = 0 
                ) 
                then
               Continue; //cerrar aquí el corchete

           if ( not( ADOCargarTablaDic( _oADOTablas[i], bPerfil ) ) ) then
               Continue;
               
            oDatosTabla := TDatosTabla.Create;
            
            oDatosTabla.sTableName := _oADOTablas[i];
               
            _oADOTablas.Objects[i] := oDatosTabla;
            
            oSPGetFields.Parameters[0].Value := oDatosTabla.sTableName;

            oSPGetFields.Open;
                                   
            oSPGetFields.First;
            while ( not(oSPGetFields.Eof) ) do
            begin
              oDatosField := TDatosField.Create;
               
                oDatosField.sFieldName := Trim(oSPGetFields.FieldByName('Column_name').AsString);
                oDatosField.sType      := LowerCase(Trim(oSPGetFields.FieldByName('Type').AsString));
                oDatosField.iSize      := StrToIntDef(Trim(oSPGetFields.FieldByName('Length').AsString), 0);
                oDatosField.iPrec      := StrToIntDef(Trim(oSPGetFields.FieldByName('Prec').AsString), 0);
                oDatosField.iScale     := StrToIntDef(Trim(oSPGetFields.FieldByName('Scale').AsString), 0);
                oDatosField.bNullable  := ( oSPGetFields.FieldByName('Nullable').AsString = 'S' );
                       
                GetTypeADO( oDatosField.sType, oDatosField.iType );

                oDatosTabla.oFields.AddObject( oDatosField.sFieldName, oDatosField );                                                                 
               
              oSPGetFields.Next;
            end;
            
            oDatosTabla.oFields.Sort;

            oSPGetFields.Close;
            
            oSPHelpIndex.Parameters[0].Value := oDatosTabla.sTableName;
            try
               oSPHelpIndex.Open;
            except
               ShowMessageError('Tabla '+oDatosTabla.sTableName+' no contiene una clave primaria.');
               Continue;
            end;   
            
            //Carga de los indices de ayuda
            oSPHelpIndex.First;

            while not oSPHelpIndex.Eof do
            begin
               oDatosIndex := TDatosIndex.Create;
               oDatosIndex.sIndexName   := oSPHelpIndex.FieldByName('index_name').AsString;
               oDatosIndex.sIndexFields := oSPHelpIndex.FieldByName('index_keys').AsString;
               
               TokenizeString( oDatosIndex.sIndexFields,
                               ',', oDatosIndex.oFields, True );
               
               for j := 0 to oDatosIndex.oFields.Count -1 do
               begin
                  iIndex := oDatosTabla.oFields.IndexOf(oDatosIndex.oFields[j] );
                  if ( iIndex > -1 ) then
                  begin
                     oDatosField := TDatosField(oDatosTabla.oFields.Objects[iIndex]);

                     oDatosIndex.oFields.Objects[j] := oDatosField;
                  end;   
               end;   
               oDatosTabla.oIndices.AddObject( oDatosIndex.sIndexName, oDatosIndex );
               
               oSPHelpIndex.Next;
            end;
            oSPHelpIndex.Close;
         end;
         _oADOTablas.Sort;
      
         //Carga de los procedimientos de la BBDD de Datos
         _oADOConnection.GetProcedureNames( _oADOProcs );

         for i := 0 to _oADOProcs.Count -1 do   
         begin
            if ( LowerCase(Copy( _oADOProcs[i], 1, 3 ) ) <> 'pr_' ) then
               Continue;
               
            sProcName := _oADOProcs[i];   
            
            iPos := Pos( ';', sProcName );
            if ( iPos > 0 ) then
               Delete( sProcName, iPos, 255 );
            
            oDatosProc            := TDatosProc.Create;  
            oDatosProc.sProcName  := sProcName;

            _oADOProcs[i]           := sProcName;
            _oADOProcs.Objects[i]   := oDatosProc;
            _oADOProcs.Sort;  //Puesta aquí, no pintaba nada 20 lineas más abajo
   
      
            //Carga de los perfiles de Usuario
            oSPGetParams.Parameters[0].Value := sProcName;

            try
               oSPGetParams.Open;
            except
               ADOShowErrors(oADOConnection);
               Continue;            
            end;   
            oSPGetParams.First;
            while ( not (oSPGetParams.Eof ) ) do
            begin
               sParamName := Trim(oSPGetParams.FieldByName('Parameter_name').AsString);
               if ( sParamName = '' ) then
                  Break;
                  
               oDatosParam := TDatosParam.Create;
               
               sParamName := Trim(oSPGetParams.FieldByName('Parameter_name').AsString);
               sParamName := LowerCase(Copy( sParamName, 2, 255 ));
               
               oDatosParam.sParamName := sParamName;
               oDatosParam.sType      := LowerCase(Trim(oSPGetParams.FieldByName('Type').AsString));
               
               oDatosParam.iSize := StrToIntDef(Trim(oSPGetParams.FieldByName('Length').AsString),
                                                     0);
               oDatosParam.iPrec := StrToIntDef(Trim(oSPGetParams.FieldByName('Prec').AsString), 0);
               oDatosParam.iScale:= StrToIntDef(Trim(oSPGetParams.FieldByName('Scale').AsString), 0);
               oDatosParam.iOrder:= StrToIntDef(Trim(oSPGetParams.FieldByName('Param_Order').AsString
                                                     ), 0);
               
               if ( oSPGetParams.FieldByName('IsOut').AsInteger = 0 ) then
                  oDatosParam.iDirection := pdInput
               else   
                  oDatosParam.iDirection := pdOutput;

               GetTypeADO( oDatosParam.sType, oDatosParam.iType ); //Mirar funciones abajo!
               
               oDatosProc.oParameters.AddObject( oDatosParam.sParamName, oDatosParam );                                                                 
               
               oSPGetParams.Next;
            end;
            oSPGetParams.Close;
         end;

      
         //Carga de los Datos del Diccionario de Datos
         oGetDicc.Open;
   
         oFieldName := oGetDicc.FieldByName('FieldName');
         oCaption   := oGetDicc.FieldByName('Caption');
         
         while ( not ( oGetDicc.Eof ) ) do
         begin
            oDatosDicc := TDatosDicc.Create;
   
            oDatosDicc.sFieldName := oFieldName.AsString;
            oDatosDicc.sCaption   := oCaption.AsString;
            
            _oADODicc.AddObject( oFieldName.AsString, oDatosDicc );
            
            oGetDicc.Next;
         end;
         _oADODicc.Sort;

         //Si se realiza la carga de la BBDD de Perfil o de Datos
         if ( not( bPerfil ) ) then
         begin
           oADOTablas := _oADOTablas;
           oADOProcs  := _oADOProcs;
           oADODicc   := _oADODicc;
         end       
         else
         begin
           oADOTablasPerfil := _oADOTablas;
           oADOProcsPerfil  := _oADOProcs;
           oADODiccPerfil   := _oADODicc;
         end;                       
         Result := True;
      Except  //Viene de arriba. Bloque (*)
         {
         on E:Exception do
         begin
            ShowException(E, _oADOConnection, False, False ); // not raise
            _oADOConnection.Close;
         end;                                
         //cerrar corchete aquí
         ADOShowErrors(_oADOConnection);
         _oADOConnection.Close;
      end;   
   finally //Viene de arriba. Bloque (**)  

      //Liberación de memoria de objetos intermediantes
      oSPGetFields.Free;
      oSPHelpIndex.Free;
      oSPGetParams.Free;
      oGetDicc.Free;
   end;
end;

procedure ADOSetFindKey( oBADODataSet : TBetterADODataSet; //Consulta a fijar. Req!
                         sTableName   : string;            //Tabla madre origen.Req!
                         sIndexName   : string;            //Índice por defecto en la consulta
                         iFields      : Integer;           //Nº campos Where a filtrar
                         sView        : string;            //Vista origen a copiar
                         iFieldsOrder : Integer;           //Nº campos a Ordenar del Idx
                         bRead        : Boolean;           //Si True,campos Solo Lectura
                         sMappings    : string;            //Mappings qué hace??????
                         sWhere       : string );          //Claúsula where customized
var                                                

   iIndex      : Integer;            //Almacena el nº de índices de la tabla
   i           : Integer;            //Numerador para iterar en bucles

   oDatosTabla : TDatosTabla;        //Estructuras externas, ver abajo!
   oDatosIndex : TDatosIndex;        
   oDatosField : TDatosField;        

   sOrderBy    : string;             

   oSQL        : TStringList;         

   oField      : TField;             
   
   oMappings   : TStringList;        

   sFieldName  : string;              
   _sFieldName : string;              

   _oADOTablas : TStringList;   //Tablas del diccionario

Begin

   //Distingue si es una tabla de perfil o de Datos a partir de la cadena de conexión
   if ( oBADODataSet.Connection = oADOConnectionPerfil ) then
   begin
      _oADOTablas:= oADOTablasPerfil; 
   end
   else
   begin
      _oADOTablas:= oADOTablas
   end;    

   if not Assigned(_oADOTablas) then
      raise Exception.Create('ADOSetFindKey: No se ha cargado el diccionario.');

   if ( sTableName = '' ) then
      raise Exception.Create('ADOSetFindKey: TBADODataSet ' + oBADODataSet.Name + ' nombre tabla vacío');  
      
   iIndex := _oADOTablas.IndexOf( sTableName );  //Toma el número de índices de la tabla

   if ( iIndex = -1) then
      raise Exception.Create('ADOSetFindKey: No se ha encontrado la tabla '+sTableName);
      
   oDatosTabla := TDatosTabla(_oADOTablas.Objects[iIndex]); //Inicialización Tablas Dicc
   
   if ( not( Assigned(oDatosTabla)) ) then
      raise Exception.Create('ADOSetFindKey: Los datos de diccionario de tabla:    '+sTableName+' no han sido cargados.');
   
   if ( sIndexName <> '' ) then
      iIndex := oDatosTabla.oIndices.IndexOf( sIndexName ) //Inicialización Índice
   else
      iIndex := 0;  //Toma Primer Índice si no se han especificado índices

   if ( (iIndex = -1) or (oDatosTabla.oIndices.Count = 0) ) then
      raise Exception.Create('ADOSetFindKey: No se ha encontrado el índice ['+sIndexName+'] en la tabla '+sTableName);

   oDatosIndex := TDatosIndex(oDatosTabla.oIndices.Objects[iIndex]);

   if ( iIndex = 0 ) and (Copy(oDatosIndex.sIndexName, 1, 2) <> 'PK') then
      raise Exception.Create('ADOSetFindKey: Indice primario '+oDatosIndex.sIndexName+' en la tabla '+sTableName+' incorrecto.');
      
   oMappings  := nil;        //Inicialización de StringList que ha pasado por parámetro

   if ( sMappings <> '' ) then   //Mappings qué hace???????
   begin
      oMappings  := TStringList.Create;

      TokenizeString(sMappings,
                     ';',
                     oMappings );

      for i := 0 to oMappings.Count -1 do
         oMappings[i] := LowerCase(oMappings[i]);            //paso a minúsculas
   end;   
   
   oBADODataSet.Close;                //Inicialización oBADODataSet
   oBADODataSet.Parameters.Clear;
   oBADODataSet.CommandText := '';     

   oSQL        := TStringList.Create; //Inicialización cadena SQL

   try
      if ( sView <> '') then  //Si es una vista
      begin
         oSQL.Add( 'SELECT * FROM ' + sView );
      end   
      else
      begin                //Si es una tabla
         oSQL.Add( 'SELECT * FROM ' + sTableName ); 
      end;         

      sOrderBy     := '';  
                  
      oDatosIndex := TDatosIndex(oDatosTabla.oIndices.Objects[iIndex]);

      if ( iFields = -1 ) then
         iFields := oDatosIndex.oFields.Count;
         
      for i := 0 to oDatosIndex.oFields.Count -1 do
      begin
         oDatosField := TDatosField(oDatosIndex.oFields.Objects[i]);

         if ( i = 0 ) then
         begin
            if ( i < iFields ) then
               oSQL.Add( ' WHERE ' );
               
            if ( iFieldsOrder <> 0 ) then   
               sOrderBy := 'ORDER BY ' + oDatosField.sFieldName;
         end   
         else
         begin   
            if ( i < iFields ) then
               oSQL.Add( ' AND ' );
            if iFieldsOrder = -1 then   
               sOrderBy := sOrderBy + ' , ' + oDatosField.sFieldName
            else if ( i < iFieldsOrder ) then   
               sOrderBy := sOrderBy + ' , ' + oDatosField.sFieldName;
         end;   
         
         if ( i < iFields ) then
         begin
            sFieldName := LowerCase(oDatosField.sFieldName); 
            
            //Parte de Mappings que no entiendo
            if ( Assigned(oMappings) ) then
            begin
               _sFieldName := oMappings.Values[sFieldName];
               if ( _sFieldName <> '' ) then
                  sFieldName := _sFieldName;
            end;  
            
            oSQL.Add( ' ( '+oDatosField.sFieldName+' = :'+sFieldName+' )' );   

            oBADODataSet.Parameters.CreateParameter( oDatosField.sFieldName,
                                                     oDatosField.iType,
                                                     pdInput,
                                                     oDatosField.iSize,
                                                     Null );
         end;   
      end;

      //Inicialización de claúsulas Where y Order by

      if ( sWhere <> '' ) then
         oSQL.Add(sWhere);

      if ( sOrderBy <> '' ) then
         oSQL.Add(sOrderBy);

      //Estableciendo propiedades en el DataSet 
   
      oBADODataSet.CommandText  := oSQL.Text;
      oBADODataSet.CommandType  := cmdText;
      
      if ( oBADODataSet.Tag = 0 ) then //El cursor por defecto es ctStatic. But si tag 0 se cambia
      begin
         oBADODataSet.CursorType      := ctKeySet;  
         oBADODataSet.Update_Criteria := adCriteriaKey;
         oBADODataSet.RefreshType     := rtResyncCurrent;
      end;

      oBADODataSet.Unique_Table    := sTableName;
      
      // Param 'bRead', hace lo propio. Y cambiamos también el tipo de Cursor
      if bRead then
      begin
         oBADODataset.CursorType     := ctKeySet;
         oBADODataset.LockType       := ltReadOnly;
      end;

      ADOSetSQLResync( oBADODataset, sTableName, sView, bRead );
      
      oBADODataSet.Prepared := True;

      
      //Si no hay vista, y hay campos en el dataset…
      if (sView <> '') and (oBADODataSet.FieldCount > 0) then
      begin
         for i := 0 to oBADODataSet.FieldCount -1 do
         begin
            oField          := oBADODataSet.Fields[i];
            oField.ReadOnly := True;
         end;   
         for i := 0 to oDatosTabla.oFields.Count -1 do
         begin
            oDatosField := TDatosField(oDatosTabla.oFields.Objects[i]);
            
            oField := oBADODataSet.FindField(oDatosField.sFieldName);
            if ( Assigned(oField) ) then
               oField.ReadOnly := False;
         end;
      end;   
   finally

      oSQL.Free;
      
      if Assigned(oMappings) then
         oMappings.Free;
   end;   
end;}



end.




