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
  object dtsGrid: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'Select * from Pessoa as p'#13#10'inner join Endereco as e on p.idPesso' +
      'a = e.idPessoa'#13#10'inner join Endereco_Integracao as ei on e.idEnde' +
      'reco = ei.idEndereco'#13#10
    Parameters = <>
    Left = 56
    Top = 88
  end
  object dspGrid: TDataSetProvider
    DataSet = dtsGrid
    Left = 56
    Top = 144
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrid'
    Left = 40
    Top = 216
  end
end
