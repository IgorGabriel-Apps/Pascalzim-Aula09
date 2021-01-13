Program Aula_09_Exemplo_Matriz_01;
	var
	TabelaClientes:Array[1..3,1..2] of string;
Begin
	 //Cadastro de informações
   Write('Digite o código do cliente 01: ');
   Readln( TabelaClientes[1,1] );
   clrscr;
   Write('Digite o nome do cliente 01: ');
   Readln( TabelaClientes[1,2] );
   clrscr;
   Write('Digite o código do cliente 02: ');
   Readln( TabelaClientes[2,1] );
   clrscr;
   Write('Digite o nome do cliente 02: ');
   Readln( TabelaClientes[2,2] );
   clrscr;
   Write('Digite o código do cliente 03: ');
   Readln( TabelaClientes[3,1] );
   clrscr;
   Write('Digite o nome do cliente 03: ');
   Readln( TabelaClientes[3,2] );
   clrscr;
   
   //Relatório
   Writeln('O cliente 01 possui o código: ',TabelaClientes[1,1],' e ele se chama: ',TabelaClientes[1,2],'.' );
   Writeln('O cliente 02 possui o código: ',TabelaClientes[2,1],' e ele se chama: ',TabelaClientes[2,2],'.' );
   Writeln('O cliente 03 possui o código: ',TabelaClientes[3,1],' e ele se chama: ',TabelaClientes[3,2],'.' );

End.