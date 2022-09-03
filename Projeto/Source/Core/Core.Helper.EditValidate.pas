unit Core.Helper.EditValidate;

interface

uses
  vcl.ExtCtrls,
  SysUtils,
  Vcl.DBCtrls;

type
  TEditVerifica = class helper for TLabeledEdit
  private
  public
    function isCepValido: boolean;
  end;

  TDBEditVerifica = class helper for TLabeledEdit
  private
  public
    function isCepValido: boolean;
  end;

implementation

{ TEditDocumento }

Function TEditVerifica.isCepValido: boolean;
var
  CEP: string;
begin
  Result := true;

  for var Count := 1 to Length(Self.Text) do
    if CharInSet(Self.Text[Count], ['0' .. '9']) then
      CEP := CEP + Self.Text[Count];

  if Length(CEP) <> 8 then
    Result := false;
end;

{ TDBEditVerifica }

function TDBEditVerifica.isCepValido: boolean;
var
  CEP: string;
begin
  Result := true;

  for var Count := 1 to Length(Self.Text) do
    if CharInSet(Self.Text[Count], ['0' .. '9']) then
      CEP := CEP + Self.Text[Count];

  if Length(CEP) <> 8 then
    Result := false;
end;

end.
