unit untCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  REST.Response.Adapter, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastro = class(TForm)
    Panel1: TPanel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1cep: TWideStringField;
    FDMemTable1logradouro: TWideStringField;
    FDMemTable1complemento: TWideStringField;
    FDMemTable1bairro: TWideStringField;
    FDMemTable1localidade: TWideStringField;
    FDMemTable1uf: TWideStringField;
    FDMemTable1ibge: TWideStringField;
    FDMemTable1gia: TWideStringField;
    FDMemTable1ddd: TWideStringField;
    FDMemTable1siafi: TWideStringField;
    DataSource1: TDataSource;
    edtSegundoNome: TEdit;
    Label7: TLabel;
    Label11: TLabel;
    edtCPF: TEdit;
    Label8: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    edtLogradouro: TDBEdit;
    edtCEP: TDBEdit;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btnBotao: TButton;
    btnCancelar: TButton;
    DBEdit1: TDBEdit;
    procedure btnBot�oClick(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    function ValidaCampo(NomeCampo : string): Boolean;
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation
 uses dtmStallos;

{$R *.dfm}

procedure TfrmCadastro.btnBot�oClick(Sender: TObject);
begin
   RESTClient1.BaseURL := 'https://viacep.com.br/ws/'+edtCEP.Text+'/json/';
   RESTRequest1.Execute;
end;

procedure TfrmCadastro.btnCancelarClick(Sender: TObject);
begin
      frmCadastro.Close;
end;

procedure TfrmCadastro.DBGrid1DblClick(Sender: TObject);
begin
   btnBotao.Caption := '&Alterar';

end;

procedure TfrmCadastro.edtCEPExit(Sender: TObject);
begin

try
  if ValidaCampo('edtCEP') then
  begin
      RESTClient1.BaseURL := 'https://viacep.com.br/ws/'+edtCEP.Text+'/json/';
      RESTRequest1.Execute;
  end;

Except on e:Exception do
  ShowMessage('Verifique se o preencimento do CEP est� correto!'+#13+#10+'Erro: '+e.Message);

end;

end;

procedure TfrmCadastro.FormCreate(Sender: TObject);
begin
    {dtm1Stallos.ADOConnection1.Connected := True;
    dtm1Stallos.ClientDataSet1.Open
    dtm1Stallos.qryGrid.Active           := True;}
end;

function TfrmCadastro.ValidaCampo(NomeCampo : string): Boolean;
var
   ind : integer;
   Resultado :  Boolean;
begin

   Resultado := True;

   for ind := 0 to frmCadastro.ComponentCount - 1 do
   begin
        if frmCadastro.Components[ind].ClassType = TDBEdit then
        begin

          if frmCadastro.Components[ind].Name = NomeCampo then
          begin

            if TDBEdit(frmCadastro.Components[ind]).Text = '' then
            begin
                 Application.MessageBox('Existe(m) campo(s) obrigat�rio(s) n�o preenchido(s)!','Aten��o!',MB_OK+MB_ICONEXCLAMATION);
                 TDBEdit(frmCadastro.Components[ind]).SetFocus;
                 Resultado := False;
            end;

          end;

        end;
   end;

   Result := Resultado;

end;

end.
