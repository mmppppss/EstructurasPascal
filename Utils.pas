Unit Utils;

INTERFACE
	uses crt;
	Function Choose(Prompt:String):Integer;
	Function IngreseNumero:Integer;
	operator /(a,b:String)x:String;

IMPLEMENTATION
	Function Choose(Prompt:String):Integer;
	Begin
		clrscr;
		writeln(Prompt);
		write('>>> ');
		readln(Choose)
	end;
	
	Function IngreseNumero:Integer;
	begin
		write('Ingrese un Numero: ');
		readln(IngreseNumero);
	end;

	operator /(a,b:String)x:String;
	Begin
		x:=a+LineEnding+b;
	end;

	Begin
	end.
