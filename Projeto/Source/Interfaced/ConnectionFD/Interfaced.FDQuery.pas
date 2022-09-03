unit Interfaced.FDQuery;

interface

uses
  Firedac.Stan.Intf,
  Firedac.Stan.Option,
  Firedac.Stan.Param,
  Firedac.Stan.Error,
  Firedac.DatS,
  Firedac.Phys.Intf,
  Firedac.DApt.Intf,
  Firedac.Stan.Async,
  Firedac.DApt,
  Data.DB,
  Firedac.Comp.DataSet,
  Firedac.Comp.Client,
  System.SysUtils;

type
  IQueryFD = interface
    ['{46E99B81-73E9-4779-9010-C72FD0595028}']

    function SQLQuery(SQL: String): IQueryFD;
    function ParametrosQuery(NameParam: String; Value: Variant): IQueryFD;
    function Open: IQueryFD;
    function ExecSQL: IQueryFD;
  end;


implementation

end.
