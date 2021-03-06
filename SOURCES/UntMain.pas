unit UntMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, UntFormColetaDados;

type
  TFrmMain = class(TForm)
    pnlCabecalho: TPanel;
    pnlCentral: TPanel;
    pnlRodape: TPanel;
    pnlBotao: TPanel;
    btnSimular: TSpeedButton;
    lblTitulo: TLabel;
    imgIcone: TImage;
    lblCopy: TLabel;
    mmTexto: TMemo;
    lblTexto: TLabel;
    imgSeta: TImage;
    lblSimule: TLabel;
    procedure btnSimularClick(Sender: TObject);
  private
    { Private declarations }
    procedure botaoSimularClick;
    procedure abreFormulario;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.abreFormulario;
var frmColetaDados : TFrmColetaDados;
begin
   frmColetaDados := TFrmColetaDados.create(self);
   frmColetaDados.show;
end;

procedure TFrmMain.botaoSimularClick;
begin
   abreFormulario;
end;

procedure TFrmMain.btnSimularClick(Sender: TObject);
begin
   botaoSimularClick;
end;

end.
