object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro'
  ClientHeight = 581
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 581
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 614
    ExplicitHeight = 519
    object Label7: TLabel
      Left = 16
      Top = 5
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label11: TLabel
      Left = 16
      Top = 53
      Width = 54
      Height = 13
      Caption = 'Sobrenome'
    end
    object Label8: TLabel
      Left = 432
      Top = 5
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object edtSegundoNome: TEdit
      Left = 16
      Top = 72
      Width = 385
      Height = 21
      MaxLength = 100
      TabOrder = 0
    end
    object edtCPF: TEdit
      Left = 432
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 1
      Top = 112
      Width = 566
      Height = 177
      Align = alBottom
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvLowered
      BiDiMode = bdRightToLeft
      BorderStyle = bsSingle
      Caption = 'Endere'#231'o'
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      VerticalAlignment = taAlignTop
      ExplicitLeft = 0
      ExplicitWidth = 614
      object Label1: TLabel
        Left = 14
        Top = 19
        Width = 21
        Height = 15
        Caption = 'cep'
      end
      object Label2: TLabel
        Left = 14
        Top = 69
        Width = 63
        Height = 15
        Caption = 'logradouro'
      end
      object Label3: TLabel
        Left = 14
        Top = 119
        Width = 80
        Height = 15
        Caption = 'complemento'
      end
      object Label4: TLabel
        Left = 174
        Top = 19
        Width = 35
        Height = 15
        Caption = 'bairro'
      end
      object Label5: TLabel
        Left = 351
        Top = 19
        Width = 61
        Height = 15
        Caption = 'localidade'
      end
      object Label6: TLabel
        Left = 95
        Top = 19
        Width = 11
        Height = 15
        Caption = 'uf'
      end
      object DBEdit6: TDBEdit
        Left = 95
        Top = 40
        Width = 58
        Height = 23
        DataField = 'uf'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 351
        Top = 40
        Width = 200
        Height = 23
        DataField = 'localidade'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 174
        Top = 40
        Width = 155
        Height = 23
        DataField = 'bairro'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 13
        Top = 136
        Width = 538
        Height = 23
        DataField = 'complemento'
        DataSource = DataSource1
        TabOrder = 3
      end
      object edtLogradouro: TDBEdit
        Left = 14
        Top = 90
        Width = 537
        Height = 23
        DataField = 'logradouro'
        DataSource = DataSource1
        TabOrder = 4
      end
      object edtCEP: TDBEdit
        Left = 14
        Top = 40
        Width = 63
        Height = 23
        DataField = 'cep'
        DataSource = DataSource1
        TabOrder = 5
        OnExit = edtCEPExit
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 289
      Width = 566
      Height = 215
      Align = alBottom
      DataSource = dtm1Stallos.dtsGrid
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'idPessoa'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'flNatureza'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dsDocumento'
          Title.Caption = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmPrimeiro'
          Title.Caption = 'Nome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmSegundo'
          Title.Caption = 'Sobrenome'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtRegistro'
          Title.Caption = 'Registro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idEndereco'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idPessoa_1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dsCEP'
          Title.Caption = 'CEP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idEnderecoIntegracao'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idEndereco_1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dsUF'
          Title.Caption = 'UF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmCidade'
          Title.Caption = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmBairro'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmLogradouro'
          Title.Caption = 'Logradouro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dsComplemento'
          Title.Caption = 'Complemento'
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 504
      Width = 566
      Height = 76
      Align = alBottom
      TabOrder = 4
      ExplicitTop = 616
      object btnBotao: TButton
        Left = 396
        Top = 32
        Width = 75
        Height = 25
        Caption = '&Cadastrar'
        TabOrder = 0
      end
      object btnCancelar: TButton
        Left = 477
        Top = 32
        Width = 75
        Height = 25
        Caption = '&Cancelar'
        TabOrder = 1
        OnClick = btnCancelarClick
      end
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 24
      Width = 400
      Height = 21
      DataField = 'nmPrimeiro'
      TabOrder = 5
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br/ws/26032477/json'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 528
    Top = 96
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 528
    Top = 168
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 528
    Top = 248
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 536
    Top = 40
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'logradouro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'complemento'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'localidade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ibge'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'gia'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ddd'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'siafi'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 528
    Top = 312
    object FDMemTable1cep: TWideStringField
      FieldName = 'cep'
      Size = 255
    end
    object FDMemTable1logradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 255
    end
    object FDMemTable1complemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object FDMemTable1bairro: TWideStringField
      FieldName = 'bairro'
      Size = 255
    end
    object FDMemTable1localidade: TWideStringField
      FieldName = 'localidade'
      Size = 255
    end
    object FDMemTable1uf: TWideStringField
      FieldName = 'uf'
      Size = 255
    end
    object FDMemTable1ibge: TWideStringField
      FieldName = 'ibge'
      Size = 255
    end
    object FDMemTable1gia: TWideStringField
      FieldName = 'gia'
      Size = 255
    end
    object FDMemTable1ddd: TWideStringField
      FieldName = 'ddd'
      Size = 255
    end
    object FDMemTable1siafi: TWideStringField
      FieldName = 'siafi'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 472
    Top = 384
  end
end
