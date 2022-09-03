unit Core.Exception;

interface

uses
  System.SysUtils,
  Vcl.Forms,
  System.Classes;

type
  TException = class
  private
    FLogFile: String;
  public
    constructor Create;
    procedure TrataException(Sender: TObject; E: Exception);
    procedure GravarLog(value: String);
  end;

implementation

uses
  Vcl.Dialogs;

constructor TException.Create;
begin
  FLogFile                := ChangeFileExt(ParamStr(0), '.log');
  Application.onException := TrataException;
end;

procedure TException.GravarLog(value: String);

var
  txtLog: TextFile;
begin
  AssignFile(txtLog, FLogFile);
  if FileExists(FLogFile) then
    Append(txtLog)
  else
    Rewrite(txtLog);
  Writeln(txtLog, FormatDateTime('dd/mm/YY hh:mm:ss - ', now) + value);
  CloseFile(txtLog);
end;

procedure TException.TrataException(Sender: TObject; E: Exception);
begin
  GravarLog('==================================');
  if TComponent(Sender) is TForm then
  begin
    GravarLog('Form: ' + TForm(Sender).Name);
    GravarLog('Caption: ' + TForm(Sender).Caption);
    GravarLog('Error: ' + E.ClassName);
    GravarLog('Error: ' + E.Message);
  end
  else
  begin
    GravarLog('Form: ' + TForm(TComponent(Sender).Owner).Name);
    GravarLog('Caption: ' + TForm(TComponent(Sender).Owner).Caption);
    GravarLog('Error: ' + E.ClassName);
    GravarLog('Error: ' + E.Message);
  end;
  GravarLog('===================================');
end;

var
  MinhaException: TException;

initialization

MinhaException := TException.Create;

finalization

MinhaException.Free;

end.
