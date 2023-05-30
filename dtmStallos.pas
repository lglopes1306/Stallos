unit dtmStallos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Datasnap.DBClient,
  Datasnap.Provider;

type
  Tdtm1Stallos = class(TDataModule)
    ADOConnection1: TADOConnection;
    qryGrid: TADOQuery;
    qryGrididPessoa: TAutoIncField;
    qryGridflNatureza: TIntegerField;
    qryGriddsDocumento: TStringField;
    qryGridnmPrimeiro: TStringField;
    qryGridnmSegundo: TStringField;
    qryGriddtRegistro: TWideStringField;
    qryGrididEndereco: TAutoIncField;
    qryGrididPessoa_1: TIntegerField;
    qryGriddsCEP: TStringField;
    qryGrididEnderecoIntegracao: TAutoIncField;
    qryGrididEndereco_1: TIntegerField;
    qryGriddsUF: TStringField;
    qryGridnmCidade: TStringField;
    qryGridnmBairro: TStringField;
    qryGridnmLogradouro: TStringField;
    qryGriddsComplemento: TStringField;
    dtsGrid: TDataSource;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtm1Stallos: Tdtm1Stallos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}





end.
