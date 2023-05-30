object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object edtCEP: TEdit
      Left = 16
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnPesquisar: TButton
      Left = 360
      Top = 169
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = btnPesquisarClick
    end
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://viacep.com.br/ws/26032477/json'
    Params = <>
    Left = 72
    Top = 72
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 80
    Top = 144
  end
  object RESTResponse1: TRESTResponse
    Left = 168
    Top = 96
  end
end
