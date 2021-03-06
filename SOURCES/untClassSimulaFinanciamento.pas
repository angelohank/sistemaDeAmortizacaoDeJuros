unit untClassSimulaFinanciamento;

interface

uses Classes, math, SysUtils;

type TFinanciamento = class(TComponent)
   public
      function getCapital : real;
      function getTaxa : real;
      function getQtdeMeses : integer;
      function jurosCompostos(capital, taxa : real; qtdeMeses : integer) : real;
      constructor create(capital, taxa: real; qtdeMeses: integer);
      destructor Destroy(); override;
      var juros : array of real;
   private
      capital : real;
      taxa : real;
      qtdeMeses : integer;

end;

implementation

{ TFinanciamento }

constructor TFinanciamento.create(capital, taxa: real; qtdeMeses: integer);
begin
   self.capital   := capital;
   self.taxa      := taxa;
   self.qtdeMeses := qtdeMeses;
end;

destructor TFinanciamento.Destroy;
begin

  inherited;
end;

function TFinanciamento.getCapital: real;
begin
   result := self.capital;
end;

function TFinanciamento.getQtdeMeses: integer;
begin
   result := self.qtdeMeses;
end;

function TFinanciamento.getTaxa: real;
begin
   result := self.taxa;
end;

function TFinanciamento.jurosCompostos(capital, taxa: real;
  qtdeMeses: integer): real;
var juroCalculado : real;
begin

   if qtdeMeses > 0 then begin

      SetLength( juros, length(juros)+1);

      juroCalculado := (capital * (taxa/100));

      capital := capital + juroCalculado;
      qtdeMeses := qtdeMeses - 1;

      juros[length(juros)-1] := juroCalculado;

      capital := jurosCompostos(capital, taxa, qtdeMeses);
   end;

   result := capital;
end;

end.
