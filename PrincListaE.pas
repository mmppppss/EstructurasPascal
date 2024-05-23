Program Prin_ListaE;
uses UlistaE;

var
  L:Pnodo;
Begin
    CrearLista(L);
	InsertarPrimero(L,3);
	InsertarPrimero(L,2);
	InsertarPrimero(L,1);
    MostrarLista(L);
	writeln;
	InsertarPosicion(L,0,2);
	MostrarLista(L);
	writeln('La lista tiene ',CantidadElementos(L));
	MostrarListaVertical(L);

    readln;
end.
