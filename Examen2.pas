uses Ucola, Upila, Uconjunto;

// Ordenar una cola de forma ascendente sin repetir valores.
Function OrdenarCola(C:Cola):Cola;
Var
	CJ:Conjunto;
Begin
	CrearConjunto(CJ);
	while not ColaVacia(C) do
	Begin
		Insertar(CJ, Frente(C));
		Desacolar(C);
	end;
	while not ConjuntoVacio(CJ) do
	Begin
		Acolar(C,PrimeroC(CJ));
		Eliminar(CJ, PrimeroC(CJ)); //aqui estaba mal
	end;
	OrdenarCola:=C;
end;

//Comprobar si dos pilas son iguales
Function PilaIguales(P1, P2:Pila):Boolean;
Begin
	while (not PilaVacia(P1)) and (not PilaVacia(P2)) do
	Begin
		if Cima(P1) <> Cima(P2) then
		Begin
			PilaIguales := False;
			break; // y aqui tambien no puse break
		end;
		Desapilar(P1);
		Desapilar(P2);
	end;
	if PilaVacia(P1) and PilaVacia(P2) then
		PilaIguales := True
	else
		PilaIguales:= False;
end;

var
	C:Cola;
	P1, P2, P3: Pila;
Begin
	CrearCola(C);
	Acolar(C, 2);
	Acolar(C, 3);
	Acolar(C, 2);
	Acolar(C, 6);
	Acolar(C, 9);
	Acolar(C, 1);
	Acolar(C, 0);
	MostrarCola(C);
	MostrarCola(OrdenarCola(C));

	CrearPila(P1);
	Apilar(P1, 2);
	Apilar(P1, 4);
	Apilar(P1, 6);

	CrearPila(P2);
	Apilar(P2, 2);
	Apilar(P2, 4);
	Apilar(P2, 6);
	
	CrearPila(P3);
	Apilar(P3, 2);
	Apilar(P3, 9);
	Apilar(P3, 6);


	writeLn(PilaIguales(P1, P2));
	writeLn(PilaIguales(P1, P3));

end.
