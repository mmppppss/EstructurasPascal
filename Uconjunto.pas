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
	Function Union(C1,C2:Conjunto):Conjunto;
	Function Interseccion(C1,C2:Conjunto):Conjunto;
	Function Diferencia(C1,C2:Conjunto):Conjunto;
	Function DiferenciaSimetrica(C1,C2:Conjunto):Conjunto;
	Function Inclusion(C1,C2:Conjunto):Boolean;
	Function Igualdad(C1,C2:Conjunto):Boolean;
	Function PrimeroC(C:Conjunto):Integer;
	Procedure sumaConjunto(c1,c2:conjunto; var res:conjunto);

IMPLEMENTATION
	Function PrimeroC(C: Conjunto):Integer;
	Begin
		PrimeroC:=Primero(C);
	end;
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
	Function Copia(C:Conjunto):Conjunto;
	var
		Cp:Conjunto;
	Begin
		CrearConjunto(Cp);
		while not ConjuntoVacio(C) do
		Begin
			Insertar(Cp,Primero(C));
			EliminarPrimero(C);
		end;
		Copia:=Cp;
	end;

	Function Union(C1,C2:Conjunto):Conjunto;
	// {x tal que x pertenece a C1 o a C2}
	var
		Cp, Cp2:Conjunto;
	Begin
		Cp:=Copia(C1);
		Cp2:=Copia(C2);
		while not ConjuntoVacio(Cp2) do
		Begin
			Insertar(Cp,Primero(Cp2));
			EliminarPrimero(Cp2);
		end;
		Union:=Cp;
	end;

	Function Interseccion(C1,C2:Conjunto):Conjunto;
	// {x tal que x pertenece a C1 y a C2}
	var
		C,Cp:Conjunto;
	Begin
		CrearConjunto(C);
		Cp:=Copia(C2);
		while not ConjuntoVacio(Cp) do
		Begin
			if Existe(C1,Primero(Cp)) then
				Insertar(C,Primero(Cp));
			EliminarPrimero(Cp);
		end;
		Interseccion:=C;
	end;

	Function Diferencia(C1,C2:Conjunto):Conjunto; 
	// x tal que x pertenece a C1 y no pertenece a C2
	var
		Cp,Cp2:Conjunto;
	Begin
		Cp:=Copia(C1);
		Cp2:=Copia(C2);
		while not ConjuntoVacio(Cp2) do
		Begin
			if Existe(Cp,Primero(Cp2)) then
				EliminarElemento(Cp,Primero(Cp2));
			EliminarPrimero(Cp2);
		end;
		Diferencia:=Cp;
	end;

	Function DiferenciaSimetrica(C1,C2:Conjunto):Conjunto;
	// x tal que x pertenece solo a C1 o solo a C2
	var
		CAux,CAux2:Conjunto;
	Begin
		CAux:=Copia(C1);
		CAux2:=Copia(C2);
		DiferenciaSimetrica:=Union(Diferencia(C1,C2),Diferencia(CAux2,CAux));
	end;

	Function Inclusion(C1,C2:Conjunto):Boolean; 
	// C1 es Subconjunto de C2 ?
	var
		Cp:Conjunto;
	Begin
		Cp:=Copia(C1);
		while not ConjuntoVacio(Cp) do
		Begin
			if not Existe(C2,Primero(Cp)) then
				begin
					Inclusion:=false;
					exit;
				end;
			EliminarPrimero(Cp);
		end;
		Inclusion:=true;
	end;

	Function Igualdad(C1,C2:Conjunto):Boolean; 
	// si C1 es subconjunto de C2 y C2 es subconjunto de C1 son Conjuntos iguales
	var
		Cp, Cp2:Conjunto;
	Begin
		Cp:=Copia(C1);
		Cp2:=Copia(C2);
		Igualdad:=(Inclusion(Cp,Cp2) and Inclusion(Cp2,Cp));
	end;

	Procedure sumaConjunto(c1,c2:conjunto; var res:conjunto);
	var
		aux:conjunto;
	begin
		crearconjunto(aux);
		while (not ConjuntoVacio(c1)) and (not ConjuntoVacio(c2)) do
		begin
			Insertar(aux,Primero(c1)+Primero(c2));
			EliminarPrimero(c1);
			EliminarPrimero(c2);
		end;
		while not ConjuntoVacio(aux)do
		begin
			Insertar(res,Primero(aux));
			EliminarPrimero(aux);
		end;
	end;

BEGIN
END.
