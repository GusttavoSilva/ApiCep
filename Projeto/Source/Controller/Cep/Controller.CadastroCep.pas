unit Controller.CadastroCep;

interface

uses Inferfaced.CadastroCep,
  FireDAC.Comp.Client,
  Controller.FDQuery,
  FireDAC.Comp.DataSet,
  Data.DB,
  System.SysUtils;

type
  TCadastroCEP = class(TInterfacedObject, ICadastroCep)
  private
    FID      : Integer;
    FCep     : String;
    FEstado  : String;
    FCidade  : String;
    FSetor   : String;
    FEndereco: String;

  public
    constructor Create;
    destructor Destroy; override;
    class function New: ICadastroCep;

    function ID(Value: Integer): ICadastroCep;
    function Cep(Value: String): ICadastroCep;
    function Estado(Value: String): ICadastroCep;
    function Cidade(Value: String): ICadastroCep;
    function Setor(Value: String): ICadastroCep;
    function Endereco(Value: String): ICadastroCep;
    function Insert: ICadastroCep;
    function Delete: ICadastroCep;
    function Update: ICadastroCep;
    function ListaCep(memReg: TFDMemTable; filtro: boolean = false): ICadastroCep;
  end;

implementation

{ TCadastroCEP }

class function TCadastroCEP.New: ICadastroCep;
begin
  result := self.Create;
end;

constructor TCadastroCEP.Create;
begin
  //
end;


destructor TCadastroCEP.Destroy;
begin
  //
  inherited;
end;

function TCadastroCEP.ID(Value: Integer): ICadastroCep;
begin
  result := self;
  FID    := Value;
end;

function TCadastroCEP.Cep(Value: String): ICadastroCep;
begin
  result := self;
  FCep   := Value;
end;

function TCadastroCEP.Cidade(Value: String): ICadastroCep;
begin
  result  := self;
  FCidade := UpperCase(Value);
end;

function TCadastroCEP.Estado(Value: String): ICadastroCep;
begin
  result  := self;
  FEstado := UpperCase(Value);
end;

function TCadastroCEP.Endereco(Value: String): ICadastroCep;
begin
  result    := self;
  FEndereco := UpperCase(Value);
end;

function TCadastroCEP.Setor(Value: String): ICadastroCep;
begin
  result := self;
  FSetor := UpperCase(Value);
end;

function TCadastroCEP.ListaCep(memReg: TFDMemTable; filtro: boolean): ICadastroCep;
var
  conexao: TQueryFD;
begin
  result  := self;
  conexao := TQueryFD.Create;
  conexao.SQLQuery('SELECT * FROM CEP where 0 = 0');

  if filtro then
  begin
    if FCep <> '' then
    begin
      conexao.SQLQuery('AND CEP = :CEP');
      conexao.ParametrosQuery('CEP', FCep);
    end;
    if FEstado <> '' then
    begin
      conexao.SQLQuery('AND ESTADO = :ESTADO');
      conexao.ParametrosQuery('ESTADO', FEstado);
    end;
    if FCidade <> '' then
    begin
      conexao.SQLQuery('AND SETOR = :SETOR');
      conexao.ParametrosQuery('SETOR', FSetor);
    end;
    if FSetor <> '' then
    begin
      conexao.SQLQuery('AND CIDADE = :CIDADE');
      conexao.ParametrosQuery('CIDADE', FCidade);
    end;
    if FEndereco <> '' then
    begin
      conexao.SQLQuery('AND ENDERECO = :ENDERECO');
      conexao.ParametrosQuery('ENDERECO', FEndereco);
    end;
  end;

  conexao.Open;

  memReg.Close;
  memReg.CopyDataSet(conexao.FQuery, [coRestart, coAppend]);
  memReg.IndexFieldNames := 'id:D';
end;

function TCadastroCEP.Insert: ICadastroCep;
var
  conexao: TQueryFD;
begin
  result  := self;
  conexao := TQueryFD.Create;
  conexao.SQLQuery('INSERT OR IGNORE INTO CEP (CEP, ESTADO, SETOR, CIDADE, ENDERECO) VALUES ' +
                                             '(:CEP, :ESTADO, :SETOR, :CIDADE, :ENDERECO)');
  conexao.ParametrosQuery('CEP', FCep);
  conexao.ParametrosQuery('ESTADO', FEstado);
  conexao.ParametrosQuery('SETOR', FSetor);
  conexao.ParametrosQuery('CIDADE', FCidade);
  conexao.ParametrosQuery('ENDERECO', FEndereco);
  conexao.ExecSQL;
end;

function TCadastroCEP.Update: ICadastroCep;
var
  conexao: TQueryFD;
begin
  result  := self;
  conexao := TQueryFD.Create;
  conexao.SQLQuery('UPDATE CEP SET ESTADO = :ESTADO, SETOR = :SETOR, CIDADE = :CIDADE, ENDERECO = :ENDERECO ' +
                   'WHERE ID = :ID');
  conexao.ParametrosQuery('ID', FID);
  conexao.ParametrosQuery('CEP', FCep);
  conexao.ParametrosQuery('ESTADO', FEstado);
  conexao.ParametrosQuery('SETOR', FSetor);
  conexao.ParametrosQuery('CIDADE', FCidade);
  conexao.ParametrosQuery('ENDERECO', FEndereco);
  conexao.ExecSQL;
end;

function TCadastroCEP.Delete: ICadastroCep;
var
  conexao: TQueryFD;
begin
  result  := self;
  conexao := TQueryFD.Create;
  conexao.SQLQuery('DELETE FROM CEP WHERE ID = :ID');
  conexao.ParametrosQuery('ID', FID);
  conexao.ExecSQL;
end;

end.
