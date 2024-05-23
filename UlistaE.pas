unit UlistaE;
interface

   type 
   Pnodo = ^Nodo;
   Nodo = record
      Ele: Integer;
      Sig: Pnodo;
   end;

   Procedure CrearLista (Var L:Pnodo);
   Procedure InsertarPrimero (Var L:Pnodo;E:Integer);
   Procedure INSERTARULTIMO(Var L:Pnodo;E:Integer);
   Procedure MostrarLista(L:Pnodo);
   Procedure EliminarPrimero(Var L:Pnodo);
   Procedure EliminarElemento (var L:Pnodo;E:integer);
   Procedure MostrarListaVertical(L:Pnodo);
   Procedure InsertarPosicion(var L:Pnodo;E,pos:Integer);
   Procedure INsertarEnOrden(var L:Pnodo;E:integer);
   Procedure InsertarEnOrden2(var L:Pnodo;E:integer);
   Procedure InsertarEnOrden3(var L:Pnodo;E:integer);
   Function EsVacia (L:Pnodo):Boolean;
   Function CantidadElementos(l:Pnodo):Integer;
   Function Primero(L:Pnodo):Integer;
   Function Ultimo(L:Pnodo):Integer;
   Function Existe(L:Pnodo;E:Integer):Boolean;
	

IMPLEMENTATION

	Procedure CrearLista (Var L:Pnodo);
	Begin
		L:=Nil;
	end;

	Function EsVacia (L:Pnodo):Boolean;
	Begin
		if L=nil then 
			Esvacia:= True
		else
			Esvacia:= false;
	end;

	Procedure InsertarPrimero (Var L:Pnodo;E:Integer);
	var
		N:Pnodo;
	Begin
		if  Esvacia(L)=true then
			begin
				New(N);
				N^.Ele:=E;
				N^.sig:=Nil;
				L:=N;
			end
		else 
			begin
				New(N);
				N^.Ele:=E;
				N^.sig:=Nil;
				N^.Sig:=L;
				L:=N;
			end;
	end;

	Function CantidadElementos(l:Pnodo):Integer;
	Var
		Aux:Pnodo;
		Cant:Integer;
	Begin
		if EsVacia(L)=true then
			CantidadElementos:=0
		else
			begin
				Aux:=L;
				Cant:=0;
				While (Aux<>nil) do
					begin
						Cant:=Cant+1;
						Aux:=Aux^.sig;
					end;
				CantidadElementos:= cant;
			end;
	end;


	Procedure MostrarLista(L:Pnodo);
	Var
		Aux:Pnodo;
	Begin
		while (L<>nil) do
			begin
				write('[ ',L^.ele,' ]->');
				L:=L^.sig;
			end;
		writeln('NIL');
	end;


Procedure MostrarListaVertical(L:Pnodo);
Var
   Aux:Pnodo;
Begin
	if EsVacia(L)=false then
       begin
       	 Aux:=L;
       	 While (aux<>nil) do
       	  begin
            writeln('[',Aux^.ele,']');
       	  	aux:=aux^.sig;
       	  end;
       end;
end;


Procedure INSERTARULTIMO(Var L:Pnodo;E:Integer);
 var
    N,Aux:Pnodo;
 Begin
 	if Esvacia(L)=true then
 		InsertarPrimero(L,E)
    else
    	begin
    		New(N);
    		N^.Ele:=E;
    		N^.sig:=nil;
    		Aux:=L;
    		While (aux^.sig<>nil) do
    			aux:= aux^.sig;
    		aux^.sig:=N;		
    	end;
end;

Procedure EliminarPrimero(Var L:Pnodo);
var
	aux:Pnodo;
begin
	if Esvacia(L)=false then
		begin
		    aux:=L;
			L:=l^.sig;
			Dispose(aux);
		end;
end;

Procedure EliminarElemento (var L:Pnodo;E:integer);
Var
	Ant,Aux:Pnodo;
Begin
	if Esvacia(L)=true then
		writeln('La lista esta Vacia')
	else
	begin	
	if L^.ele=E then
		EliminarPrimero(L)
	else
		begin
			Aux:=L;
			While (aux^.ele<>E) and (aux^.sig<>nil) do
				begin
				    ant:=aux;
					aux:=aux^.sig;
			    end;
			if aux^.ele<>E then 
				writeln('El elemento no se encuentra en la Lista')
			else
			   begin
			   		ant^.sig:=aux^.sig;
			   		Dispose(aux);
			   end;
		end;
	end;
end;

Function Primero (L:Pnodo):Integer;
  begin
     if Not Esvacia(L) then
         Primero:= L^.Ele;
   end;

Function Ultimo(L:Pnodo):Integer;
var 
  Aux:Pnodo;
  begin
     if Not Esvacia(L) then
        begin
            aux:=L;
            While (aux^.sig<>Nil) do
               aux:= aux^.sig ;

            Ultimo := Aux^.ele;
       end;
  end;

 Procedure InsertarPosicion(var L:Pnodo;E,pos:Integer);
Var
  N,Ant,aux:Pnodo;
  x:integer;
Begin
     IF (Esvacia(L)=true) or (Pos<=1) then
         Insertarprimero(L,E)
     else
        if Pos> CantidadElementos(L) then
            InsertarUltimo(L,E)
        else
          begin
             Aux:=L;
             x:=1;
             while  (x<pos) do
               begin
                  ant:=aux;
                  aux:= aux^.sig;
                  x:=x+1;
               end;

               New(N);
               N^.ele:=E;
               ant^.sig:=N;
               n^.sig:=aux;

          end;
  end;
	Function Existe(L:Pnodo;E:Integer):Boolean;
	var
		aux:Pnodo;
	begin
		aux:=L;
		While (aux<>Nil) and (aux^.ele<>E) do
			Begin
				aux:=aux^.sig;
			end;
		if(aux=nil) then
			Existe:=false
		else
			Existe:=(aux^.ele=E);
	end;

Procedure INsertarEnOrden(var L:Pnodo;E:integer);
var
	ANT,AUX,N:PNODO;
BEGIN
	IF ESVACIA(L) THEN
		INSERTARPRIMERO(L,E)
	ELSE
	BEGIN
		IF NOT EXISTE(L,E) THEN
		BEGIN
			aux:=L;
			if aux^.ele>E then insertarprimero(L,E)
			else
				if aux^.sig=nil then
				begin
					if aux^.ele>E then insertarprimero(L,E)
					else InsertarUltimo(L,E) ;
				end
				else
				begin
					aux:=L;
					WHILE (AUX^.SIG<>NIL) AND (AUX^.ELE<E) DO
					BEGIN
						ANT:=AUX;
						AUX:=AUX^.SIG;
					END;
					IF AUX^.ELE>E THEN
					BEGIN
						NEW(N);
						N^.ELE:= E;
						ANT^.SIG:= N;
						N^.SIG:=AUX;
					END
					ELSE
						INSERTARULTIMO(L,E);
			end;
		END;
	END;
END;

Procedure InsertarEnOrden2(var L:Pnodo; E: integer);
var
  Nuevo, Ant, Act: Pnodo;
begin
  New(Nuevo);
  Nuevo^.Ele := E;
  Nuevo^.Sig := nil;
if not Existe(L,E)then
    begin 
      if EsVacia(L) or (L^.Ele >= E) then
        begin
           Nuevo^.Sig := L;
          L := Nuevo;
        end
     else
       begin
         Ant := L;
         Act := L^.Sig;
         while (Act <> nil) and (Act^.Ele < E) do
           begin
             Ant := Act;
             Act := Act^.Sig;
           end;
           Nuevo^.Sig := Act;
           Ant^.Sig := Nuevo;
       end;
   end;
end;

Procedure InsertarEnOrden3(var L:Pnodo; E: integer);
var
	Nuevo, aux:Pnodo;
Begin
	if (EXISTE(L,E)) then exit
	else if(EsVacia(L)) or (L^.Ele>E) then
		InsertarPrimero(L,E)
	else 
		begin
			aux:=L;
			while(aux^.sig<>nil) and (aux^.sig^.ele<E)do
					aux:=aux^.sig;
			if(aux^.sig=nil) then
				InsertarUltimo(L,E)
			else 
				begin
					New(Nuevo);
					Nuevo^.ele:=E;
					Nuevo^.sig:=aux^.sig;
					aux^.sig:=Nuevo;
				end;
		end;	
end;

Begin
end.
