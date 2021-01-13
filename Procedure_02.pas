Program Aula_09_Exemplo_Proc_02;

//Versoes inferiores a 6 do pascal, este codigo pode não funcionar!
procedure GerarRelatorio(Codigo:integer; Nome:String);
begin
	 Write('O código do cliente é: ');
	 textcolor(yellow);
	 Write(Codigo);
	 textcolor(lightgreen);
	 Write(', e ele se chama ');
	 textcolor(yellow);
	 Write(Nome);
	 textcolor(lightgreen);
	 Write('.');
end;
	
Begin

GerarRelatorio(10,'Igor Gabriel');
GerarRelatorio(11,'Fernando Costa');
GerarRelatorio(12,'Rodolfo Bianchi');

End.