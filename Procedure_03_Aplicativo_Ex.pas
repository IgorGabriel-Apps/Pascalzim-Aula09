Program Aula_09_Exemplo_App_Proc; //Aplicativo de média bimestrais v2.0
Var
NomeAlunos:Array[1..2] of String; //Nome dos alunos
NotaAlunos:Array[1..10] of Real;  //Nota dos 2 alunos

//Muda a cor do texto para amarelo quando chamada
procedure TextoAmarelo;
begin
  textcolor(yellow);
end;
//Muda a cor do texto para Verde claro quando chamada
procedure TextoCorNormal;
begin
  textcolor(lightgreen);
end;
//Muda a cor do texto para Verde quando a nota for 8 +, e vermelho caso a nota seja menor que 8
procedure TextoCorNota(NotaAluno:Real);
begin
  if NotaAluno < 8 then
  Textcolor(red)
  else
  textcolor(green);
end;
//Cabeçalho do aplicativo
Procedure ApresentacaoApp;
begin
  Writeln('#===============================================================#');
  Writeln('#			 Aplicativo de médias bimestrais (Igor) Versão 2.0        #');
  Writeln('#===============================================================#');
  Writeln('|                                                               |');
  Writeln('|    ¦¦¦¦¦¦                        ¦¦                           |');
  Writeln('|    ¦¦  ¦¦  ¦¦¦¦ ¦¦¦¦ ¦¦¦¦¦  ¦¦¦¦ ¦¦ ¦¦¦¦¦ ¦¦¦¦ ¦¦   ¦¦  ¦¦    |');
  Writeln('|    ¦¦  ¦¦    ¦¦ ¦¦   ¦¦       ¦¦ ¦¦    ¦¦  ¦¦  ¦¦¦ ¦¦¦  ¦¦    |');
  Writeln('|    ¦¦¦¦¦¦ ¦¦¦¦¦ ¦¦¦¦ ¦¦    ¦¦¦¦¦ ¦¦  ¦¦¦   ¦¦  ¦¦ ¦ ¦¦  ¦¦    |');
  Writeln('|    ¦¦     ¦¦ ¦¦   ¦¦ ¦¦    ¦¦ ¦¦ ¦¦ ¦¦     ¦¦  ¦¦   ¦¦        |');
  Writeln('|    ¦¦     ¦¦¦¦¦ ¦¦¦¦ ¦¦¦¦¦ ¦¦¦¦¦ ¦¦ ¦¦¦¦¦ ¦¦¦¦ ¦¦   ¦¦  ¦¦    |');
  Writeln('|                                                               |');
  Writeln('|                                         versão pascal 6.0.3.1 |');
  Writeln('#===============================================================#');
  Writeln;
end;

//Impede o app de continuar pelo tempo falado pelo usuário, em milisegundos
Procedure EsperarParaContinuar(TempoParaEsperar:Integer);
begin
  Writeln('Aguarde, carregando...');
  Delay(TempoParaEsperar); //Espera Para proseguir  , pegando o tempo passado, tambem poderia ser Delay(5000), o comando com o número direto
end;

//Cadastra os nomes dos alunos nas variavies (Vetor: NomeAlunos)
Procedure CadastrarAlunos;
begin
  clrscr;
  Writeln('#------------------------------------------#');
  Writeln('| Digite o nome do primeiro aluno completo |');
  TextoAmarelo;
  Readln( NomeAlunos[1] );
  TextoCorNormal;
  clrscr;
  Writeln('#------------------------------------------#');
  Writeln('| Digite o nome do segundo aluno completo |');
  TextoAmarelo;
  Readln( NomeAlunos[2] );
  TextoCorNormal;
  clrscr;
end;

//Cadastra as notas dos alunos usando FOR e Possui uma variavel propria
procedure CadastrarNotas;
Var
Contador:Integer; //Esta variavel é destuido ao finalizar esta procedure, podendo ter o nome Contador Novamente no resto do app
begin
  clrscr;
  Writeln('#------------------------------------------#');
  for Contador:=1 to 4 do begin
    Write('Digite a nota do ', Contador, 'º bimestre do(a) ',NomeAlunos[1],': ' );
    Readln( NotaAlunos[Contador] );
  end;
  clrscr;
  Writeln('#------------------------------------------#');
  for Contador:=6 to 9 do begin
    Write('Digite a nota do ', Contador, 'º bimestre do(a) ',NomeAlunos[2],': ' );
    Readln( NotaAlunos[Contador] );
  end;
  clrscr;
end;

//Calcula a média final e guarda nas Pos 5 e 10 do vetor de notas
procedure GerarMediaFinal;
var
Resposta:Real;
Contador:Integer;
begin
  Resposta:=0;
  for Contador:= 1 to 4 do begin
    Resposta := Resposta + NotaAlunos[Contador];
  end;
  NotaAlunos[5] :=  Resposta / 4;
  
  Resposta:=0;
  for Contador:= 6 to 9 do begin
    Resposta := Resposta + NotaAlunos[Contador];
  end;
  NotaAlunos[10] :=  Resposta / 4;
  
end;
//Gera o texto de apresentação ao user, Relatório
procedure GerarRelatorio;
Var
Contador:integer;
begin
  clrscr;
  Writeln('#-----------------------------#');
  Writeln('');
  TextoCorNota(NotaAlunos[5]);
  Writeln('Media Final do aluno(a): ', NomeAlunos[1], ' foi : ',NotaAlunos[5]:0:0, '.');
  Writeln('#-----------------------------#');
  Writeln('');
  TextoCorNota(NotaAlunos[10]);
  Writeln('Media Final do aluno(a): ', NomeAlunos[2], ' foi : ',NotaAlunos[10]:0:0, '.');
end;
Begin
  
  //Apenas chamada dos métodos
  ApresentacaoApp;
  EsperarParaContinuar(5000); // 5 segundos para prosseguir, apenas para enfeitar o APP (Não q seje necessário)
  CadastrarAlunos;
  CadastrarNotas;
  GerarMediaFinal;
  GerarRelatorio;
  
End.