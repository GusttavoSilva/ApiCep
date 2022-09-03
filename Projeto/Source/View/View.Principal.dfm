object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Busca CEP'
  ClientHeight = 759
  ClientWidth = 975
  Color = 13948116
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object GridPanel1: TGridPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 965
    Height = 739
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 15
    Align = alClient
    Color = clSilver
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = pnlContainerTop
        Row = 0
      end
      item
        Column = 0
        Control = Panel2
        Row = 1
      end
      item
        Column = 0
        Control = Panel1
        Row = 2
      end>
    ParentBackground = False
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 180.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 220.000000000000000000
      end>
    TabOrder = 0
    object pnlContainerTop: TPanel
      AlignWithMargins = True
      Left = 9
      Top = 9
      Width = 947
      Height = 164
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 945
        Height = 41
        Align = alTop
        Caption = 'Busca CEP na API'
        Color = 4934475
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 596
        Top = 42
        Width = 350
        Height = 121
        Align = alRight
        Caption = 'Busca Automatica'
        TabOrder = 1
        Visible = False
        object lbl_DescIntervalo: TLabel
          Left = 11
          Top = 64
          Width = 111
          Height = 15
          Caption = 'Intervalo (3 - 60 Seg) '
        end
        object edtCepInicial: TLabeledEdit
          Left = 11
          Top = 40
          Width = 119
          Height = 23
          EditLabel.Width = 55
          EditLabel.Height = 15
          EditLabel.Caption = 'Cep Inicial'
          EditMask = '99999-999;0'
          MaxLength = 9
          TabOrder = 0
          Text = ''
        end
        object edtCepFinal: TLabeledEdit
          Left = 138
          Top = 40
          Width = 119
          Height = 23
          EditLabel.Width = 49
          EditLabel.Height = 15
          EditLabel.Caption = 'Cep Final'
          EditMask = '99999-999;0'
          MaxLength = 9
          TabOrder = 1
          Text = ''
        end
        object nbxIntervaloReq: TNumberBox
          Left = 11
          Top = 82
          Width = 121
          Height = 23
          MinValue = 3.000000000000000000
          MaxValue = 60.000000000000000000
          TabOrder = 2
          Value = 5.000000000000000000
        end
        object ToggleSwitch1: TToggleSwitch
          Left = 148
          Top = 83
          Width = 108
          Height = 20
          DoubleBuffered = False
          ParentDoubleBuffered = False
          StateCaptions.CaptionOn = 'Ligado'
          StateCaptions.CaptionOff = 'Desligado'
          TabOrder = 3
          ThumbColor = clBlue
          OnClick = ToggleSwitch1Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 42
        Width = 249
        Height = 121
        Align = alLeft
        Caption = 'Busca Manual'
        TabOrder = 2
        object btnConsultaCepManual: TButton
          Left = 102
          Top = 35
          Width = 90
          Height = 46
          Caption = 'Consulta CEP'
          TabOrder = 0
          OnClick = btnConsultaCepManualClick
        end
        object edtCep: TLabeledEdit
          Left = 15
          Top = 47
          Width = 81
          Height = 23
          EditLabel.Width = 76
          EditLabel.Height = 15
          EditLabel.Caption = 'Informe o CEP'
          EditMask = '99999-999;0'
          MaxLength = 9
          TabOrder = 1
          Text = ''
        end
      end
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 9
      Top = 189
      Width = 947
      Height = 321
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 945
        Height = 41
        Align = alTop
        Caption = 'Filtra dados no banco de dados'
        Color = 4934475
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 9
        Top = 155
        Width = 929
        Height = 157
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Align = alBottom
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object edtPesqCep: TLabeledEdit
        Left = 24
        Top = 59
        Width = 81
        Height = 23
        EditLabel.Width = 21
        EditLabel.Height = 15
        EditLabel.Caption = 'CEP'
        EditMask = '99999-999;0'
        MaxLength = 9
        TabOrder = 2
        Text = ''
      end
      object edtPesqCidade: TLabeledEdit
        Left = 120
        Top = 63
        Width = 130
        Height = 23
        EditLabel.Width = 41
        EditLabel.Height = 15
        EditLabel.Caption = 'CIDADE'
        TabOrder = 3
        Text = ''
      end
      object edtPesqEndereco: TLabeledEdit
        Left = 271
        Top = 63
        Width = 130
        Height = 23
        EditLabel.Width = 59
        EditLabel.Height = 15
        EditLabel.Caption = 'ENDERE'#199'O'
        TabOrder = 4
        Text = ''
      end
      object edtPesqEstado: TLabeledEdit
        Left = 414
        Top = 63
        Width = 130
        Height = 23
        EditLabel.Width = 42
        EditLabel.Height = 15
        EditLabel.Caption = 'ESTADO'
        TabOrder = 5
        Text = ''
      end
      object edtPesqSetor: TLabeledEdit
        Left = 559
        Top = 63
        Width = 130
        Height = 23
        EditLabel.Width = 33
        EditLabel.Height = 15
        EditLabel.Caption = 'SETOR'
        TabOrder = 6
        Text = ''
      end
      object btnBuscar: TButton
        Left = 822
        Top = 48
        Width = 90
        Height = 46
        Caption = 'Filtrar'
        TabOrder = 7
        OnClick = btnBuscarClick
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 9
      Top = 526
      Width = 947
      Height = 204
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 282
        Top = 49
        Width = 37
        Height = 15
        Caption = 'Cidade'
      end
      object Label2: TLabel
        Left = 103
        Top = 54
        Width = 21
        Height = 15
        Caption = 'CEP'
      end
      object Label3: TLabel
        Left = 30
        Top = 121
        Width = 49
        Height = 15
        Caption = 'Endere'#231'o'
      end
      object Label4: TLabel
        Left = 406
        Top = 121
        Width = 27
        Height = 15
        Caption = 'Setor'
      end
      object Label5: TLabel
        Left = 488
        Top = 54
        Width = 35
        Height = 15
        Caption = 'Estado'
      end
      object Label6: TLabel
        Left = 24
        Top = 54
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 945
        Height = 41
        Align = alTop
        Caption = 'Detalhes registro'
        Color = 4934475
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object dbeCep: TDBEdit
        Left = 103
        Top = 70
        Width = 121
        Height = 23
        DataField = 'cep'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 1
      end
      object dbeCidade: TDBEdit
        Left = 282
        Top = 70
        Width = 177
        Height = 23
        DataField = 'cidade'
        DataSource = DataSource1
        TabOrder = 2
      end
      object dbeEndereco: TDBEdit
        Left = 30
        Top = 142
        Width = 329
        Height = 23
        DataField = 'endereco'
        DataSource = DataSource1
        TabOrder = 3
      end
      object dbeSetor: TDBEdit
        Left = 406
        Top = 142
        Width = 203
        Height = 23
        DataField = 'setor'
        DataSource = DataSource1
        TabOrder = 4
      end
      object dbeEstado: TDBEdit
        Left = 488
        Top = 70
        Width = 121
        Height = 23
        DataField = 'estado'
        DataSource = DataSource1
        TabOrder = 5
      end
      object btnEditar: TButton
        Left = 734
        Top = 61
        Width = 97
        Height = 41
        Caption = 'Gravar Edi'#231#227'o '
        TabOrder = 6
        OnClick = btnEditarClick
      end
      object btnExcluir: TButton
        Left = 734
        Top = 124
        Width = 97
        Height = 41
        Caption = 'Excluir'
        TabOrder = 7
        OnClick = btnExcluirClick
      end
      object dbeId: TDBEdit
        Left = 24
        Top = 70
        Width = 55
        Height = 23
        DataField = 'id'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 8
      end
    end
  end
  object memReg: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 861
    Top = 304
    object memRegid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
    end
    object memRegCEP: TIntegerField
      FieldName = 'CEP'
      DisplayFormat = '00000-000;1;_'
    end
    object memRegcidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
    end
    object memRegestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
    end
    object memRegendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
    end
    object memRegsetor: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'setor'
    end
  end
  object DataSource1: TDataSource
    DataSet = memReg
    Left = 540
    Top = 107
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 540
    Top = 64
  end
end
