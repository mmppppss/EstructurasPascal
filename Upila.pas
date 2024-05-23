Unit Upila;

INTERFACE
	uses UlistaE;
	
	TYPE
		Pila=Pnodo;

	Procedure CrearPila(var P:Pila);
	Procedure Apilar(var P:Pila;E:integer);
	Procedure Desapilar(var P:Pila);
	Procedure MostrarPila(P:Pila);
	Function Cima(P:Pila):Integer;
	Function Base(P:Pila):Integer;
	Function Pilavacia(P:pila):boolean;

IMPLEMENTATION
	
	Procedure CrearPila(var P:Pila);
	Begin
		CrearLista(P);
	end;

	Procedure Apilar(var P:Pila;E:integer);
	Begin
		InsertarPrimero(P,E);
	end;

	Procedure Desapilar(var P:Pila);
	Begin
		EliminarPrimero(P);
	end;

	Procedure MostrarPila(P:PIla);
	Begin
		MostrarListaVertical(P);
	end;

	Function Cima(P:Pila):Integer;
	Begin
		Cima:= Primero(P);
	end;

	Function Base(P:Pila):Integer;
	Begin
		Base:=  Ultimo(P);
	end;

	Function PilaVacia(p:PIla):boolean;
	Begin
		PIlavacia:= Esvacia(P);
	end;

Begin
end.




