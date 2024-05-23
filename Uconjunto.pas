UNIT Uconjunto;

INTERFACE
	uses UlistaE;
	
	TYPE
		Conjunto = Pnodo;

	Procedure CREARCONJUNTO (VAR C:Conjunto);
	Function ConjuntoVacio(C:Conjunto):Boolean;
	Procedure MostrarConjunto(C:Conjunto);
	Procedure Eliminar (var C:Conjunto; E:integer);
	Procedure Insertar(var C:Conjunto;E:integer);

IMPLEMENTATION

	Procedure CrearConjunto(var C:Conjunto);
	Begin
		CrearLista(C);
	end;

	Function ConjuntoVacio(C:Conjunto):Boolean;
	Begin
		ConjuntoVacio:=EsVacia(C);
	end;

	Procedure MostrarConjunto(C:Conjunto);
	Begin
		MostrarLista(C);
	end;

	Procedure Eliminar(var C:Conjunto;E:Integer);
	Begin
		EliminarElemento(C,E);
	end;

	Procedure Insertar(var C:Conjunto;E:Integer);
	Begin
		InsertarEnOrden3(C,E);
	end;

BEGIN
END.
