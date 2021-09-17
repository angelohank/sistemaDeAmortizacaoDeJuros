program prjSistemaDeAmortiacao;

uses
  Vcl.Forms,
  UntMain in 'SOURCES\UntMain.pas' {FrmMain},
  UntFormColetaDados in 'SOURCES\UntFormColetaDados.pas' {FrmColetaDados},
  untClassSimulaFinanciamento in 'SOURCES\untClassSimulaFinanciamento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
