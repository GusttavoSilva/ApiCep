unit Controller.ApiCep;

interface

uses Inferfaced.ApiCep,
  REST.Client,
  System.JSON,
  System.SysUtils,
  System.Classes,
  System.TypInfo;

const

  Api = 'https://brasilapi.com.br/api/cep/v1/';

type

  TApiCep = class(TInterfacedObject, IApiCep)
  private
    FCep: String;
  public
    constructor Create;
    Destructor Destroy; Override;
    class function New: IApiCep;
    function Cep(Value: String): IApiCep;
    function BuscaCep(aList: TStringList): IApiCep;
  end;

implementation

uses
  REST.Types,
  Vcl.Dialogs;

{ TApiCep }

constructor TApiCep.Create;
begin
  //
end;

destructor TApiCep.Destroy;
begin
  //
  inherited;
end;

class function TApiCep.New: IApiCep;
begin
  result := self.Create;
end;

function TApiCep.Cep(Value: String): IApiCep;
begin
  result := self;
  FCep   := Value;
end;

function TApiCep.BuscaCep(aList: TStringList): IApiCep;
var
  jsonObj : TJSONObject;
  LClient : TRESTClient;
  LRequest: TRESTRequest;
begin
  result  := self;
  jsonObj := TJSONObject.Create;
  try

    LClient          := TRESTClient.Create(Api + FCep);
    LRequest         := TRESTRequest.Create(nil);
    LRequest.Client  := LClient;
    LRequest.Method  := TRESTRequestMethod.rmGET;
    LRequest.Timeout := 5000;
    LRequest.Execute;

    if LRequest.Response.StatusCode = 200 then
    begin
      jsonObj := TJSONObject.ParseJSONValue(LRequest.Response.Content) as TJSONObject;

      if jsonObj.Get('cep') <> nil then
        aList.Add(jsonObj.GetValue('cep').Value)
      else
        aList.Add('');

      if jsonObj.Get('state')  <> nil then
        aList.Add(jsonObj.GetValue('state').Value)
      else
        aList.Add('');

      if jsonObj.Get('city')  <> nil then
        aList.Add(jsonObj.GetValue('city').Value)
      else
        aList.Add('');

      if jsonObj.Get('neighborhood')  <> nil then
        aList.Add(jsonObj.GetValue('neighborhood').Value)
      else
        aList.Add('');

      if jsonObj.Get('street')  <> nil then
        aList.Add(jsonObj.GetValue('street').Value)
      else
        aList.Add('');
    end;

  finally
    freeAndNil(LClient);
    freeAndNil(LRequest);
    freeAndNil(jsonObj);
  end;
end;

end.
