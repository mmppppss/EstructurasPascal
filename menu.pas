program menu;
uses UlistaE, Ucola, Upila, Uconjunto, Utils;

var
	i:Integer;
	L:Pnodo;
Procedure menuLista;
Begin
	i:=Choose('Operaciones Disponibles'/
		'    [01] Crear La Lista'/
		'    [02] Mostrar la Lista'/
		'    [03] Insertar Elementos'/
		'    [04] Eliminar Elementos'/
		'    [05] Cantidad de Elementos'/
		'    [06] Primer Elemento'/
		'    [07] Ultimo Elemento'/
		'    [08] Existe un elemento'/
		'    [09] ¿Lista vacia?'/'    [00] Salir'
	);
	case i of
		1: CrearLista(L);
		2: MostrarLista(L);
		3: begin
			i:=Choose(ListToStr(L)/
				'[1] Insertar al principio'/
				'[2] Insertar al final'/
				'[3] Insertar en n posicion'/
				'[4] Insertar en Orden');
			case i of
				1: InsertarPrimero(L, IngreseNumero);
				2: InsertarUltimo(L, IngreseNumero);
				3: begin
					write('¿En que posicion insertar? [MAX:',CantidadElementos(L)+1,']: ');
					readln(i);
					InsertarPosicion(L, IngreseNumero, i);
				end;
				4: INsertarEnOrden(L, IngreseNumero);
			end;
		end;
		4: begin
			i:=Choose(ListToStr(L)/
				'[1] Eliminar el primer Elemento'/
				'[2] Eliminar x elemento');
			case i of
				1: EliminarPrimero(L);
				2: EliminarElemento(L, IngreseNumero);
			end;
		end;
		5: writeln('La lista tiene: ', CantidadElementos(L), ' elementos.');
		6: writeln('El primer elemento es: ', Primero(L));
		7: writeln('El ultimo elemento es: ', Ultimo(L));
		8: if Existe(L, IngreseNumero) then writeln('Si Existe') else writeln('No existe');
		9: if EsVacia(L) then writeln('Esta vacia') else writeln('No esta vacia');
		else exit;
	end;
	readln;
	menuLista;
end;


Begin
	i:=Choose('Elija la estructura a usar:'/
		'    [1] Listas Enlazadas'/
		'    [2] Pilas'/
		'    [3] Colas'/
		'    [4] Conjuntos'/
		'    [*] Salir');
	case i of
		1: menuLista;
		2: writeln('Pilas');
		3: writeln('Colas');
		4: writeln('Conjuntos');
	else
		exit;
		
	end;
end.
