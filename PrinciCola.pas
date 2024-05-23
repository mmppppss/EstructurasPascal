Program PrinCola;
//uses Ucola,UPila;
uses Ucola;


(*
Function InvertirCola(C:Cola):Cola;
var
 P:PIla;
 C1:Cola;
begin
   CrearPila(P);
   While not Colavacia(C) do
     begin
         apilar(P,frente(c));
         desacolar(C);
     end;
   crearcola(c1);
   While not PIlavacia(P) do
     begin
          Acolar(C1,cima(P));
          desapilar(P);
     end;
    InvertirCola:=C1;
 end;
*)
var
  C:Cola;

begin
    CrearCola(C);
    Acolar(C,3);
    Acolar(C,10);
    Acolar(C,5);
    Acolar(C,7);
    Acolar(C,2);
    MostrarCola(C);
    writeln;
	
	Desacolar(C);

	MostrarCola(C);
    Writeln('El frente de la Cola es : ',Frente(C));

    Writeln('El elemento de Atras es: ',Atras(C));

    //MostrarCola(InvertirCola(C));

    readln;

end.

