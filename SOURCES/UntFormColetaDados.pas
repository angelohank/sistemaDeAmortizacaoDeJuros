unit UntFormColetaDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  untClassSimulaFinanciamento, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmColetaDados = class(TForm)
    pnlTitulo: TPanel;
    pnlPrincipal: TPanel;
    fldCapital: TEdit;
    fldTaxa: TEdit;
    fldMeses: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlBotao: TPanel;
    btnSimular: TSpeedButton;
    dbgDados: TDBGrid;
    pnlTituloGrid: TPanel;
    pnlTotais: TPanel;
    Label4: TLabel;
    lblTotalJuros: TLabel;
    lblTotalCapital: TLabel;
    lblTotalPagamento: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSimularClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure botaoSimularClick;
    procedure criaClasseFinanciamento;
    procedure montaGrid(financiamento : TFinanciamento);
    function somaJuros(financiamento : TFinanciamento) : real;
    function validaDados : boolean;

    var capital   : real;
    var taxa      : real;
    var qtdeMeses : integer;
  public
    { Public declarations }
  end;

var
  FrmColetaDados: TFrmColetaDados;


implementation

{$R *.dfm}

procedure TFrmColetaDados.botaoSimularClick;
begin

   if validaDados then begin

     capital := StrToFloat(fldCapital.Text);
     taxa := StrToFloat(fldTaxa.Text);
     qtdeMeses := StrToInt(fldMeses.Text);

     criaClasseFinanciamento;
   end;
end;

procedure TFrmColetaDados.btnSimularClick(Sender: TObject);
begin
   botaoSimularClick;
end;

procedure TFrmColetaDados.criaClasseFinanciamento;
var   financiamento : TFinanciamento;
      retorno : real;
begin
   financiamento := TFinanciamento.create(capital, taxa, qtdeMeses);

   montaGrid(financiamento);

end;

procedure TFrmColetaDados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TFrmColetaDados.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then begin
      botaoSimularClick;
   end;
end;

procedure TFrmColetaDados.montaGrid(financiamento : TFinanciamento);
var total : real;
begin
   capital := StrToFloat(fldCapital.text);
   taxa := strToFloat(fldTaxa.Text);
   qtdeMeses := StrToInt(fldMeses.text);

   total := financiamento.jurosCompostos(capital, taxa, qtdeMeses);

   lblTotalPagamento.caption := formatFloat('#,##0.00; (#,##0.00) ; Zero',total);
   lblTotalCapital.caption := formatFloat('#,##0.00; (#,##0.00) ; Zero', capital);

   lblTotalJuros.Caption := formatFloat('#,##0.00; (#,##0.00) ; Zero',somaJuros(financiamento));

   freeAndNil(financiamento);
end;

function TFrmColetaDados.somaJuros(financiamento : TFinanciamento): real;
var   iCont : integer;
      totalJuros : real;
begin
   totalJuros := 0;

   for iCont := 0 to length(financiamento.juros) do begin
      totalJuros := totalJuros + financiamento.juros[iCont];
   end;

   result := totalJuros;
end;

function TFrmColetaDados.validaDados: boolean;
var bResult : boolean;
begin
   bResult := true;

   if fldCapital.Text = '' then begin
      showMessage('Por favor, informe um valor no campo Capital');
      if fldCapital.CanFocus then fldCapital.SetFocus;

      bResult := false;
   end;

   if bResult and (fldTaxa.Text = '') then begin
      showMessage('Por favor, informe um valor no campo Taxa');
      if fldTaxa.CanFocus then fldTaxa.SetFocus;

      bResult := false;
   end;

   if bResult and (fldMeses.Text = '') then begin
      showMessage('Por favor, informe um valor no campo Meses');
      if fldMeses.CanFocus then fldMeses.SetFocus;

      bResult := false;
   end;

   result := bResult;
end;

end.
