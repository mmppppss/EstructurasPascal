uses Uconjunto;
var
	A, B, C:Conjunto;
Begin
	CrearConjunto(A);
	Insertar(A,2);
	Insertar(A,1);
	Insertar(A,0);
	Insertar(A,4);
	Insertar(A,3);
	CrearConjunto(B);
	Insertar(B,7);
	Insertar(B,2);
	Insertar(B,4);
	Insertar(B,5);
	Insertar(B,6);
	write('A: ');
	mostrarConjunto(A);
	write('B: ');
	mostrarConjunto(B);
	write('A∩B: ');
	mostrarConjunto(Interseccion(A,B));
	write('A∪B: ');
	mostrarConjunto(Union(A,B));
	write('A-B: ');
	mostrarConjunto(Diferencia(A,B));
	write('B-A: ');
	mostrarConjunto(Diferencia(B,A));
	write('A<>B: ');
	mostrarConjunto(DiferenciaSimetrica(A,B));
	
	if Inclusion(A,B) then
		writeln('A es subconjunto de B')
	else
		writeln('A no es subconjunto de B');

	if Inclusion(B,A) then
		writeln('B es subconjunto de A')
	else
		writeln('B no es subconjunto de A');
	
	if Igualdad(A,B) then
		writeln('A es igual a B')
	else
		writeln('A no es igual a B');
	CrearConjunto(C);
	sumaConjunto(A,B,C);
	mostrarConjunto(C);
end.
