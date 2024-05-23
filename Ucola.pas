UNIT Ucola;
INTERFACE
	uses UlistaE;

	TYPE
		Cola = Pnodo;

	Procedure CREARCOLA (VAR C:Cola);
	Procedure Acolar(var C:Cola;E:integer);
	Procedure Desacolar(var C:cola);
	Procedure MostrarCola(C:Cola);
	Function Frente(c:cola):integer;
	Function Atras (c:Cola):integer;
	Function ColaVAcia(C:Cola):Boolean;

IMPLEMENTATION

	Procedure CrearCola(var C:Cola);
	Begin
		CrearLista(C);
	end;

	Procedure Acolar(var C:Cola;E:integer);
	Begin
		InsertarUltimo(C,E);
	end;

	Procedure Desacolar(var C:Cola);
	Begin
		EliminarPrimero(C);
	end;

	Procedure MostrarCola(C:Cola);
	Begin
		MostrarLista(C);
	end;

	Function Frente(C:Cola):integer;
	Begin
		Frente:= Primero(C);
	end;

	Function Atras(C:Cola):INteger;
	Begin
		Atras := Ultimo(C);
	end;

	Function ColaVacia(C:Cola):Boolean;
	begin
		ColaVacia:=Esvacia(C);
	end;

Begin
end.
