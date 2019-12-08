unit inLibPermission;

interface

uses  SysUtils, Classes, DB, inMtoPrincipal, Variants;

procedure GetPermisoDataForm(fForm:TComponent; var pFbPermisoEscritura, pFbPermisoExcel: boolean);

implementation

uses
  inLibUser;

procedure GetPermisoDataForm(fForm:TComponent; var pFbPermisoEscritura, pFbPermisoExcel: boolean);

var
  sFormName, sUser, sGroup:String;
  //qryConsul : TZQuery;
begin
//   sFormName := fForm.Name;
//   sUser := oUser;
//   sGroup := oGroup;
//   qryConsul := TZQuery.Create(nil);
//   qryConsul.Connection := frmOpenApp.FDmConn.ZconnGlent;
//   with qryConsul do
//   begin
//               SQL.Text := '     select PermisoEscritura               ' +
//                           '       from glt_user_permisos_form pf      ' +
//                           ' inner join glt_user_permisos p            ' +
//                           '         on pf.Menu = p.menu               ' +
//                           '      where pf.formulario = :formulario    ' +
//                           '        and (p.Entidad = :usuario          ' +
//                           '             or p.Entidad = :grupo)         ' +
//                           '   order by PermisoEscritura               ';
//
//     ParamByName('formulario').AsString :=  sFormName;
//     ParamByName('usuario').AsString :=  sUser;
//     ParamByName('grupo').AsString :=  sGroup;
//     Open;
//     if RecordCount = 0 then
//       pFbPermisoEscritura := True
//     else
//       if FieldByName('PermisoEscritura').Value = null then
//         pFbPermisoEscritura := True
//       else
//         if FindField('PermisoEscritura').AsInteger = 0 then
//           pFbPermisoEscritura := False
//         else
//           pFbPermisoEscritura := True;
//     Close;
//     SQL.Text := '     select PermisoListado               ' +
//                 '       from glt_user_permisos_form pf      ' +
//                 ' inner join glt_user_permisos p            ' +
//                 '         on pf.Menu = p.menu               ' +
//                 '      where pf.formulario = :formulario    ' +
//                 '        and (p.Entidad = :usuario          ' +
//                 '             or p.Entidad = :grupo)         ' +
//                 '   order by PermisoListado               ';
//
//     ParamByName('formulario').AsString :=  sFormName;
//     ParamByName('usuario').AsString :=  sUser;
//     ParamByName('grupo').AsString :=  sGroup;
//     Open;
//     if RecordCount = 0 then
//       pFbPermisoExcel := True
//     else
//       if FieldByName('PermisoListado').Value = null then
//         pFbPermisoExcel := True
//       else
//         if FindField('PermisoListado').AsInteger = 0  then
//           pFbPermisoExcel := False
//         else
//           pFbPermisoExcel := True;
//     Close;
//   end;
//  FreeAndNil(qryConsul);
end;

end.
