unit UnitxGlobal;

{$A-}

interface

uses Dialogs;

const

// Global TX constants

// DEFAULT page sizes and margins
  A4_WIDTH_MM   = 210;
  A4_HEIGHT_MM  = 270;
  TWIPS_IN_MM   = 56.7;
  TWIPS_IN_CM   = 56.7;
  TWIPS_IN_INCH = 1440;

  A4 =           'A4';
  A5 =           'A5';
  B5 =           'B5';
  LETTER =       'Letter';
  LEGAL =        'Legal';
  USER_DEFINED = 'Personal';

  IIA4           = 0;
  IIA5           = 1;
  IIB5           = 2;
  IILETTER       = 3;
  IILEGAL        = 4;
  IIUSER_DEFINED = 5;


  DINA4_X = 11906;
  DINA4_Y = 16837;
  DINA5_X = 8418;
  DINA5_Y = 11906;
  B5_X = 9978;
  B5_Y = 14174;
  USLET_X = 12240;
  USLET_Y = 15840;
  USLEGAL_X = 12240;
  USLEGAL_Y = 20160;

  M_INCH = 1;
  M_CM = 0; //originalmente 2 alx
  GS_INCH = 'inch';
  GS_CM = 'cm';
  MAXINT = 32767;


// Macro fields
  TF_FIELDFRAMED = $4;
  TF_DELETEABLE = $8000;
  TF_CHANGEABLE = $4000;
  TF_FIELDUNFRAMED = $2000;


// Frame styles
  BF_LEFTLINE = $1;
  BF_RIGHTLINE = $2;
  BF_TOPLINE = $4;
  BF_BOTTOMLINE = $8;

  BF_BOX = BF_LEFTLINE or BF_RIGHTLINE or BF_TOPLINE or BF_BOTTOMLINE;
  BF_TABLINES = $10;
  BF_TABLE = BF_BOX or BF_TABLINES;
  BF_SINGLE = $20;
  BF_DOUBLE = $40;
  BF_BOXCONNECT = $80;

  BF_NOLEFTLINE = $100;
  BF_NORIGHTLINE = $200;
  BF_NOTOPLINE = $400;
  BF_NOBOTTOMLINE = $800;
  BF_NOTABLINES = $1000;

// File types
  TXT_FILE = 1;
  TXM_FILE = 3;
  HTM_FILE = 4;
  RTF_FILE = 5;
  DOC_FILE = 9;
  CSS_FILE = 11;
  PDF_FILE = 12;

// Clip property
  CLIP_CUT = 1;
  CLIP_COPY = 2;
  CLIP_PASTE = 3;
  CLIP_CLEAR = 4;

// Color values
  COLOR_TEXT = 1;
  COLOR_BACK = 2;

// Ruler scale values
  SCALE_MM = 0;
  SCALE_CM = 1;
  SCALE_INCH = 2;

// Undo/Redo
  UNDO_INSERT = 1;
  UNDO_DELETE = 2;
  UNDO_FORMAT = 3;
  REDO_INSERT = 10;
  REDO_DELETE = 11;
  REDO_FORMAT = 12;

// Indents
  INDENT_NOCOMMON = $8000;

// ImageAttr property array
  IC_XSIZE = 1;
  IC_YSIZE = 2;
  IC_SCALE = 3;
  IC_GRAY = 4;

// Embedded windows
  EOM_INSERT = 0;
  EOM_OVERWRITE = 1;
  EOM_DISPLACELINE = 2;
  EOM_DISPLACEWORD = 3;

// table splitting positons
  TBL_ABOVE = 1;
  TBL_BELOW = 2;

// PDF access permissions
  PDF_Allow_Authoring = $1;
  PDF_Allow_AuthoringFields = $2;
  PDF_Allow_ContentAccessibility = $4;
  PDF_Allow_DocumentAssembly = $8;
  PDF_Allow_ExtractContents = $10;
  PDF_Allow_GeneralEditing = $20;
  PDF_Allow_HighLevelPrinting = $40;
  PDF_Allow_LowLevelPrinting = $80;


  WM_USER = 1024;
  TX_TABLE_INSERT = (WM_USER + 230);

// Global document data structure
type DOC_DATA = record
    lLeftMargin: LongInt; {Page size and margins (in twips)}
    lTopMargin: LongInt;
    lRightMargin: LongInt;
    lBottomMargin: LongInt;
    lHeight: LongInt;
    lWidth: LongInt;
    nPaperSize: word; {Paper size}
  end;



procedure InsertImage(bInsertAsCharacter: boolean; TX: TTXTextControl; dlgFile: TOpenDialog; nLeft, nTop: Integer);
procedure InsertObject(bInsertAsCharacter: Boolean; txText: TTXTextControl; nLeft, nTop: Integer);
function Twips2DlgString(n: Single): string;
function DlgString2Twips(sDlg: string): LongInt;
function MyVal(s: string): Double;
function DetectSize(lHeight:LongInt; lWidth: LongInt): Integer;

var glnMeasurement: Integer;

implementation

uses SysUtils, Forms;


procedure InsertImage(bInsertAsCharacter: boolean; TX: TTXTextControl; dlgFile: TOpenDialog; nLeft, nTop: Integer);

begin
  dlgFile.Title := 'Insert Image';
  dlgFile.Filename := '';
  dlgFile.Filter := TX.ImageFilters;
  dlgFile.FilterIndex := 1;
  dlgFile.Options := [ofPathMustExist, ofFileMustExist, ofHideReadOnly];

  if dlgFile.Execute then begin
    try
      if bInsertAsCharacter then
        TX.ObjectInsertAsChar(0, dlgFile.Filename, -1, 100, 100, 0, 0, 0)
      else TX.ObjectInsertFixed(0, dlgFile.Filename, nLeft, nTop + TX.ScrollPosY,
          100, 100, 0, 0, 3, EOM_DISPLACEWORD, 0, 0, 0, 0, 0);
    except
      MessageDlg('Cannot insert image: ' + dlgfile.filename + '.', mtError, [mbOK], 0);
    end;
  end;
end;


function Twips2DlgString(n: Single): string;
var
  sResul:String;
begin
  sResul:= '0';
  case glnMeasurement of
    M_INCH: sResul := FloatToStrF((((n + 0.0005) / TWIPS_IN_INCH)), ffNumber, 7, 2);
    M_CM: sResul := FloatToStrF((((n + 0.0005) / TWIPS_IN_CM)), ffNumber, 7, 2);
  else MessageDlg('Internal Error in Twips2DlgString()', mtError, [mbOK], 0);
  end; // case
  Result := sResul;
end;


function DlgString2Twips(sDlg: string): LongInt;
begin
  { Convert a string which contains a number in inches or centimeters
    to twips. The conversion factor is taken from the global variable
    glfTwipsInCurrentMeasurement.}
  case glnMeasurement of
    M_INCH: DlgString2Twips := trunc((MyVal(sDlg)) * TWIPS_IN_INCH);
    M_CM: DlgString2Twips := trunc((MyVal(sDlg)) * TWIPS_IN_CM);
  else begin
      MessageDlg('Internal Error in DlgString2Twips()', mtError, [mbOK], 0);
      DlgString2Twips := 0;
    end;
  end; // Case
end;

function MyVal(s: string): Double;
// Val function which also works with ',' as decimal sign
var n,
  code: Integer;
begin
  for n := 1 to Length(s) do begin
    if Copy(s, n, 1) = ',' then s[n] := '.';
  end;
  Val(s, result, code);
end;

procedure InsertObject(bInsertAsCharacter: Boolean; txText: TTXTextControl; nLeft, nTop: Integer);

begin
  if (bInsertAsCharacter) then begin
    txText.ObjectInsertAsChar(1, InttoStr(0), -1, 100, 100, 0, 0, 0);
  end
  else begin
    txText.ObjectInsertFixed(1, InttoStr(0), nLeft, nTop + txText.ScrollPosY, 100,
      100, 0, 0, 3, EOM_DISPLACEWORD, 0, 0, 0, 0, 0);
  end;
end;


//ALEX
function DetectSize(lHeight:LongInt; lWidth: LongInt): Integer;
begin
  if ( (lWidth = DINA4_X ) and ( lWidth = DINA4_Y ) ) then
    Result := IIA4
  else
    if ( (lWidth = DINA5_X ) and ( lWidth = DINA5_Y ) ) then
      Result := IIA5
    else
      if ( (lWidth = B5_X ) and ( lWidth = B5_Y ) ) then
        Result := IIB5
      else
        if ( (lWidth = USLET_X ) and ( lWidth = USLET_Y ) ) then
          Result := IILETTER
        else
          if ( (lWidth = USLEGAL_X ) and ( lWidth = USLEGAL_Y ) ) then
            Result := IILEGAL
          else
            Result :=   IIUSER_DEFINED;
end;

end.
