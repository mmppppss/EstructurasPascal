program PRINCIPALPILA;
uses Upila;

Var 
P,p1,p2:PILA;

BEGIN
   CrearPila(P);
   CrearPIla(p1);
   crearPIla(p2);
   Apilar(P,5);
   apilar(P,2);
   apilar(p,8);
   apilar(p,10);
   apilar(p1,5);
   apilar(p1,3);
   apilar(p2,1);
   apilar(p2,9);
   apilar(p2,10);
   writeln ('Pila P');
   mostrarpila(p);
   writeln ('Pila P1');
  
   mostrarpila(P1);
   writeln ('Pila P2');
  
   mostrarpila(p2);


   writeln('cima de pila p:',cima(p));
   writeln('cima de pila p1:',cima(p1));
   writeln('cima de pila p2:',cima(p2));
   writeln('Base de pila p:',base(p));
   writeln('Base de pila p1:',base(p1));

   writeln('Desapilar de p1');
   desapilar(p1);
   mostrarpila(P1);

   writeln('Desapilar de p2');
   desapilar(p2);
   mostrarpila(P2);

   readln;
   end.
