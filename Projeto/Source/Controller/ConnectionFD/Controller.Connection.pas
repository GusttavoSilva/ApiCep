unit Controller.Connection;

interface

uses
  FireDAC.Comp.Client,
  FireDAC.Phys.SQLite,
  Data.DB,
  System.SysUtils,
  Vcl.StdCtrls,
  Vcl.Forms,
  System.Classes,
  Interfaced.Connection;

type

  TConnectionFD = class(TInterfacedObject, IConnectionFD)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IConnectionFD;
    /// <summary>
    /// É responsavel por fazer a conexão com o banco de dados.
    /// </summary>
    /// <param name="FConnection">Recebe o componente TFDConnection para ativar a conexão.
    /// </param>
    /// <param name="Driver">Recebe o componente TFDPhysSQLiteDriverLink para adiconar a DLL do banco.
    /// </param>
    /// <returns>TRUE se conectado com sucesso ao banco de dados;
    /// FALSE se não conseguir conectar ao banco de dados.
    /// </returns>
    function ConnectDataBase(FConnection: TFDConnection; Driver: TFDPhysSQLiteDriverLink): Boolean;

  end;

implementation

uses
  Vcl.Dialogs;

{ TConnectionFD }

function TConnectionFD.ConnectDataBase(FConnection: TFDConnection; Driver: TFDPhysSQLiteDriverLink): Boolean;
begin
  Driver.VendorLib                      := ExtractFilePath(Application.ExeName) + 'lib\DLLs\SQLite3.dll';
  FConnection.DriverName                := 'SQLite';
  FConnection.Params.Values['Database'] := ExtractFilePath(Application.ExeName) + 'lib\libConn';
  FConnection.Connected                 := True;
  result := FConnection.Connected;
end;

constructor TConnectionFD.Create;
begin
end;

destructor TConnectionFD.Destroy;
begin
  inherited;
end;

class function TConnectionFD.New: IConnectionFD;
begin
  result := self.Create;
end;

end.
