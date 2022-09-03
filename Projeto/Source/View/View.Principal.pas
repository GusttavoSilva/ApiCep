{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit View.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Core.Helper.EditValidate,
  Controller.ApiCep,
  Data.DB,
  Vcl.NumberBox,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.DBCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Controller.CadastroCep,
  System.Types,
  Vcl.WinXCtrls;

type
  TFrmPrincipal = class(TForm)
    memReg: TFDMemTable;
    DataSource1: TDataSource;
    Timer1: TTimer;
    memRegid: TIntegerField;
    memRegsetor: TStringField;
    memRegcidade: TStringField;
    memRegestado: TStringField;
    memRegendereco: TStringField;
    GridPanel1: TGridPanel;
    pnlContainerTop: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    lbl_DescIntervalo: TLabel;
    edtCepInicial: TLabeledEdit;
    edtCepFinal: TLabeledEdit;
    nbxIntervaloReq: TNumberBox;
    ToggleSwitch1: TToggleSwitch;
    GroupBox2: TGroupBox;
    btnConsultaCepManual: TButton;
    edtCep: TLabeledEdit;
    DBGrid2: TDBGrid;
    edtPesqCep: TLabeledEdit;
    edtPesqCidade: TLabeledEdit;
    edtPesqEndereco: TLabeledEdit;
    edtPesqEstado: TLabeledEdit;
    edtPesqSetor: TLabeledEdit;
    btnBuscar: TButton;
    dbeCep: TDBEdit;
    dbeCidade: TDBEdit;
    dbeEndereco: TDBEdit;
    dbeSetor: TDBEdit;
    dbeEstado: TDBEdit;
    memRegCEP: TIntegerField;
    btnEditar: TButton;
    btnExcluir: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeId: TDBEdit;
    Label6: TLabel;
    procedure btnConsultaCepManualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ToggleSwitch1Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
    procedure ConsultaApiCep(Value: String);
    procedure ListaCep;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnBuscarClick(Sender: TObject);
begin
  ListaCep;
end;

procedure TFrmPrincipal.btnConsultaCepManualClick(Sender: TObject);
begin
  if edtCep.isCepValido then
  begin
    ConsultaApiCep(StringReplace(edtCep.Text, '-', '', [rfReplaceAll, rfIgnoreCase]));
  end
  else
    raise Exception.Create('CEP inválido!');
end;

procedure TFrmPrincipal.btnEditarClick(Sender: TObject);
begin
  var
  CadastroCep := TCadastroCEP.Create;
  CadastroCep
    .ID(StrToInt(dbeId.Text))
    .Cep(StringReplace(dbeCep.Text, '-', '', [rfReplaceAll, rfIgnoreCase]))
    .Estado(dbeEstado.Text)
    .Cidade(dbeCidade.Text)
    .Setor(dbeSetor.Text)
    .Endereco(dbeEndereco.Text)
    .Update
  .ListaCep(memReg, False);
  memReg.Active := true;
end;

procedure TFrmPrincipal.btnExcluirClick(Sender: TObject);
begin
  var
  CadastroCep := TCadastroCEP.Create;
  CadastroCep
    .ID(StrToInt(dbeId.Text))
    .Delete
  .ListaCep(memReg, False);
  memReg.Active := true;
end;

procedure TFrmPrincipal.ConsultaApiCep(Value: String);
var
  LThread: TThread;
begin
  LThread := TThread.CreateAnonymousThread(
    procedure
    begin
      var
      BuscaCep := TApiCep.Create;
      var
      aList := TStringList.Create;
      try
        BuscaCep.Cep(Value).BuscaCep(aList);

        if aList.Count > 0 then
        begin
            var
          CadastroCep := TCadastroCEP.Create;
          CadastroCep
            .Cep(aList[0])
            .Estado(aList[1])
            .Cidade(aList[2])
            .Setor(aList[3])
            .Endereco(aList[4])
            .Insert
          .ListaCep(memReg, False);
          memReg.Active := true;
        end;
      finally
        FreeAndNil(aList);
      end;
    end);
  LThread.FreeOnTerminate := true;
  LThread.Start;

end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  var
  CadastroCep := TCadastroCEP.Create;
  CadastroCep
    .ListaCep(memReg, False);
  memReg.Active := true;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  edtCep.SetFocus;
end;

procedure TFrmPrincipal.ListaCep;
begin
var CadastroCep := TCadastroCEP.Create;
    CadastroCep
    .Cep(StringReplace(edtPesqCep.Text, '-', '', [rfReplaceAll, rfIgnoreCase]))
    .Estado(edtPesqEstado.Text)
    .Cidade(edtPesqCidade.Text)
    .Setor(edtPesqSetor.Text)
    .Endereco(edtPesqEndereco.Text)
    .ListaCep(memReg, true);
    memReg.Active := true;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
//var
//  CepInicio, CepFinal : integer;
begin
//  CepInicio :=  StringReplace(edtCepInicial.Text, '-', '', [rfReplaceAll, rfIgnoreCase]).ToInteger;
//  CepFinal  := StringReplace(edtCepFinal.Text, '-', '', [rfReplaceAll, rfIgnoreCase]).ToInteger;

  ConsultaApiCep('76270000');
end;

procedure TFrmPrincipal.ToggleSwitch1Click(Sender: TObject);
var
  time: Cardinal;
begin
  time            := nbxIntervaloReq.ValueInt * 1000;
  Timer1.Interval := time;
  Timer1.Enabled  := ToggleSwitch1.State = tssOn;
end;

end.
