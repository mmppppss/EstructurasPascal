
# Lista Enlazada

Siendo L una lista de elementos de tipo entero 
	L => [X]->[Y]->[Z]-> NIL

y "a" un elemento arbitrario de tipo entero

## Operaciones:
-	Nombre(Argumentos); 			Resultado

    - CrearLista(L);                L => NIL

    - EsVacia(L);                   True o False
	
    - InsertarPrimero(L, a); 		[a]->[X]->[Y]->[Z]-> NIL
	
    - InsertarUltimo(L, a);  		[X]->[Y]->[Z]->[a]-> NIL
	
    - InsertarPosicion(L, a, 2);	[X]->[a]->[Y]->[Z]-> NIL
	
    - CantidadElementos(L); 		3
	
    - MostrarLista;                 X->Y->Z-> NIL
	
    - MostrarListaVertical;			X
                                    Y
                                    Z
                                    NIL
	
    - EliminarPrimero; 				([X]->[Y]->[Z]-> NIL) => ([Y]->[Z]-> NIL)
	
    - EliminarElemento(L,Y); 		([X]->[Y]->[Z]-> NIL) => ([X]->[Z]-> NIL)
	
    - Existe(L,X); 					True o False
	
    - Ultimo; 						Z
	
    - Primero; 						X

	

# Cola

Cola es una estructura que hereda a Lista
por lo tanto puede usar	sus operaciones

    Siendo C una cola de elementos de tipo entero 
    C => [X,Y,Z]
    y "a" un elemento arbitrario de tipo entero

    C es de tipo Cola
    Cola es un alias de PNodo
    C es de tipo PNodo

## Operaciones
-	Nombre(Argumentos); 			Resultado

    - CrearCola(C);                 C => NIL

    - Acolar(C, a);                 C => [X, Y, Z, a]

    - Desacolar(C);                 C => [Y, Z]

    - MostrarCola;                  X, Y, Z

    - Frente(C);                    X

    - Atras(C);                     Z

    - ColaVacia(C);                 True o False



	
