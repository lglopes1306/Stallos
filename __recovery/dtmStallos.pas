unit dtmStallos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Datasnap.DBClient,
  Datasnap.Provider;

type
  Tdtm1Stallos = class(TDataModule)
    ADOConnection1: TADOConnection;
    dtsGrid: TADODataSet;
    dspGrid: TDataSetProvider;
    cdsGrid: TClientDataSet;
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
