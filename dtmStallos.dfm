object dtm1Stallos: Tdtm1Stallos
  OldCreateOrder = False
  Height = 358
  Width = 527
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=desenv;Persist Security Info=True;U' +
      'ser ID=Luiz;Initial Catalog=Stallos;Data Source=localhost\SQLEXP' +
      'RESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 24
  end
  object qryGrid: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = dtsGrid
    Parameters = <>
    SQL.Strings = (
      'Select * from Pessoa as p'
      'inner join Endereco as e on p.idPessoa = e.idPessoa'
      
        'inner join Endereco_Integracao as ei on e.idEndereco = ei.idEnde' +
        'reco')
    Left = 56
    Top = 88
    object qryGrididPessoa: TAutoIncField
      FieldName = 'idPessoa'
      ReadOnly = True
    end
    object qryGridflNatureza: TIntegerField
      FieldName = 'flNatureza'
    end
    object qryGriddsDocumento: TStringField
      FieldName = 'dsDocumento'
    end
    object qryGridnmPrimeiro: TStringField
      FieldName = 'nmPrimeiro'
      Size = 100
    end
    object qryGridnmSegundo: TStringField
      FieldName = 'nmSegundo'
      Size = 100
    end
    object qryGriddtRegistro: TWideStringField
      FieldName = 'dtRegistro'
      Size = 10
    end
    object qryGrididEndereco: TAutoIncField
      FieldName = 'idEndereco'
      ReadOnly = True
    end
    object qryGrididPessoa_1: TIntegerField
      FieldName = 'idPessoa_1'
    end
    object qryGriddsCEP: TStringField
      FieldName = 'dsCEP'
      Size = 100
    end
    object qryGrididEnderecoIntegracao: TAutoIncField
      FieldName = 'idEnderecoIntegracao'
      ReadOnly = True
    end
    object qryGrididEndereco_1: TIntegerField
      FieldName = 'idEndereco_1'
    end
    object qryGriddsUF: TStringField
      FieldName = 'dsUF'
      Size = 50
    end
    object qryGridnmCidade: TStringField
      FieldName = 'nmCidade'
      Size = 100
    end
    object qryGridnmBairro: TStringField
      FieldName = 'nmBairro'
      Size = 50
    end
    object qryGridnmLogradouro: TStringField
      FieldName = 'nmLogradouro'
      Size = 100
    end
    object qryGriddsComplemento: TStringField
      FieldName = 'dsComplemento'
      Size = 100
    end
  end
  object dtsGrid: TDataSource
    DataSet = ClientDataSet1
    Left = 64
    Top = 158
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qryGrid
    Left = 208
    Top = 96
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 184
    Top = 176
  end
end
