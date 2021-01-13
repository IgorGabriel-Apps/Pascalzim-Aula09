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

//A divisão tem que ser Real os valores!
function Dividir(Numero1:real; Numero2:real):Real;
begin
  Dividir := Numero1 / Numero2;
end;

procedure PedeValoresMulti;
begin
  Write('Agora digite um número: ');
  readln(N1);
  Write('Agora digite outro número: ');
  readln(N2);
end;

procedure PedeValoresDiv;
begin
  Write('Agora digite um número: ');
  readln(N1D);
  Write('Agora digite outro número: ');
  readln(N2D);
end;
Begin
  Writeln( 'A soma de 20 + 50 é: ', Somar(20, 50) );
  Writeln( 'A subtração de 90 - 60 é: ', Subtrair(90, 60) );
  PedeValoresMulti;
  Writeln( 'A Multiplicação de ',N1,' * ',N2,' é: ', Multiplicar(N1, N2) );
  PedeValoresDiv;
  Writeln( 'A Divisão de ',N1D,' / ',N2D,' é: ', Dividir(N1D, N2D):0:0 );
  
End.