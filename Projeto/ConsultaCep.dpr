program ConsultaCep;

uses
  Vcl.Forms,
  System.SysUtils,
  Core.Helper.EditValidate in 'Source\Core\Core.Helper.EditValidate.pas',
  View.Principal in 'Source\View\View.Principal.pas' {FrmPrincipal},
  Controller.Connection in 'Source\Controller\ConnectionFD\Controller.Connection.pas',
  Interfaced.Connection in 'Source\Interfaced\ConnectionFD\Interfaced.Connection.pas',
  Interfaced.FDQuery in 'Source\Interfaced\ConnectionFD\Interfaced.FDQuery.pas',
  Controller.FDQuery in 'Source\Controller\ConnectionFD\Controller.FDQuery.pas',
  Inferfaced.ApiCep in 'Source\Interfaced\Cep\Inferfaced.ApiCep.pas',
  Inferfaced.CadastroCep in 'Source\Interfaced\Cep\Inferfaced.CadastroCep.pas',
  Controller.ApiCep in 'Source\Controller\Cep\Controller.ApiCep.pas',
  Controller.CadastroCep in 'Source\Controller\Cep\Controller.CadastroCep.pas',
  DataModule.Dm in 'Source\DataModule\DataModule.Dm.pas' {Dm: TDataModule},
  Core.Exception in 'Source\Core\Core.Exception.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  var
  Connection := TConnectionFD.Create;
  Connection.ConnectDataBase(Dm.FDConn, Dm.FDDriver);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
