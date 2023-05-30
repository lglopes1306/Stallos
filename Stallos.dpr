program Stallos;

uses
  Vcl.Forms,
  untCadastro in 'untCadastro.pas' {frmCadastro},
  dtmStallos in 'dtmStallos.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
