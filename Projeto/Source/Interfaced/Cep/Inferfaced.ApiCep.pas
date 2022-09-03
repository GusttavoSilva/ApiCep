unit Inferfaced.ApiCep;

interface

uses
  System.Classes;

type

IApiCep = interface
  ['{3E33A6AE-F106-4949-B640-124273B40467}']
  function Cep(Value:String): IApiCep;
  function BuscaCep(aList: TStringList): IApiCep;
end;

implementation

end.
