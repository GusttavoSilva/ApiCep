unit Inferfaced.CadastroCep;

interface

uses
  System.Classes,
  FireDAC.Comp.Client;

type

  ICadastroCep = interface
    ['{3E33A6AE-F106-4949-B640-124273B40467}']

    function ID(Value: Integer): ICadastroCep;
    function Cep(Value: String): ICadastroCep;
    function Estado(Value: String): ICadastroCep;
    function Cidade(Value: String): ICadastroCep;
    function Setor(Value: String): ICadastroCep;
    function Endereco(Value: String): ICadastroCep;
    function Insert: ICadastroCep;
    function Delete: ICadastroCep;
    function Update: ICadastroCep;
    function ListaCep(memReg: TFDMemTable; filtro: boolean): ICadastroCep;
  end;

implementation

end.
