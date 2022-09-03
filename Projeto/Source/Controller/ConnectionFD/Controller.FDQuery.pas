unit Controller.FDQuery;

interface

uses
  Firedac.Stan.Intf,
  System.SysUtils,
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
  DataModule.Dm,
  Interfaced.FDQuery;

type
  TQueryFD = class(TInterfacedObject, IQueryFD)
  private
  public
    FQuery: TFDQuery;
    constructor Create;
    destructor Destroy; override;

    /// <summary>
    /// Recebe o texto da query.
    /// </summary>
    function SQLQuery(SQL: String): IQueryFD;

    /// <summary>
    /// Recebe o parametro e o valor que vai ser usado no texto da query.
    /// </summary>
    /// <param name="NameParam">Recebe o nome do parametro informado deve possuir o mesmo nome do campo da banco.
    /// </param>
    /// <param name="Value">Recebe o valor que vai ser substituido pelo parametro.
    /// </param>
    function ParametrosQuery(NameParam: String; Value: Variant): IQueryFD;

    /// <summary>
    /// Retorna a select da query.
    /// </summary>
    function Open: IQueryFD;

    /// <summary>
    /// Executa a query.
    /// </summary>
    function ExecSQL: IQueryFD;

  end;

implementation

{ TQueryFD }

constructor TQueryFD.Create;
begin
  FQuery                         := TFDQuery.Create(nil);
  FQuery.Connection              := Dm.FDConn;
  FQuery.FetchOptions.RowsetSize := 500000;
  FQuery.Active                  := false;
  FQuery.SQL.Clear;
end;

destructor TQueryFD.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TQueryFD.Open: IQueryFD;
begin
  try
    result := self;
    FQuery.Open;
  except
    on E: Exception do
  end;
end;

function TQueryFD.ExecSQL: IQueryFD;
begin
  try
    result := self;
    FQuery.ExecSQL;
  except
    on E: Exception do
  end;
end;

function TQueryFD.ParametrosQuery(NameParam: String; Value: Variant): IQueryFD;
begin
  result := self;
  if FQuery.FindParam(NameParam) <> nil then
    FQuery.ParamByName(NameParam).Value := Value;
end;

function TQueryFD.SQLQuery(SQL: String): IQueryFD;
begin
  result := self;
  FQuery.SQL.Add(SQL);
end;

end.
