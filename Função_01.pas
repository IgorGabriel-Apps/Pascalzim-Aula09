Program Aula_09_Exemplo_01_Funcoes;
var
N1:Integer;
N2:Integer;
N1D:Integer;
N2D:Integer;
function Somar(Numero1:integer; Numero2:integer):Integer;
begin
  Somar := Numero1 + Numero2;
end;

function Subtrair(Numero1:integer; Numero2:integer):Integer;
begin
  Subtrair := Numero1 - Numero2;
end;

function Multiplicar(Numero1:integer; Numero2:integer):Integer;
begin
  Multiplicar := Numero1 * Numero2;
end;

//A divis�o tem que ser Real os valores!
function Dividir(Numero1:real; Numero2:real):Real;
begin
  Dividir := Numero1 / Numero2;
end;

procedure PedeValoresMulti;
begin
  Write('Agora digite um n�mero: ');
  readln(N1);
  Write('Agora digite outro n�mero: ');
  readln(N2);
end;

procedure PedeValoresDiv;
begin
  Write('Agora digite um n�mero: ');
  readln(N1D);
  Write('Agora digite outro n�mero: ');
  readln(N2D);
end;
Begin
  Writeln( 'A soma de 20 + 50 �: ', Somar(20, 50) );
  Writeln( 'A subtra��o de 90 - 60 �: ', Subtrair(90, 60) );
  PedeValoresMulti;
  Writeln( 'A Multiplica��o de ',N1,' * ',N2,' �: ', Multiplicar(N1, N2) );
  PedeValoresDiv;
  Writeln( 'A Divis�o de ',N1D,' / ',N2D,' �: ', Dividir(N1D, N2D):0:0 );
  
End.