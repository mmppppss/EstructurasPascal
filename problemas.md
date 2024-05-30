Unidad Upila:

    ContieneElemento(elemento: Integer, pila: Pila):
        Verifica si un elemento está presente en la pila.

    InvertirPila(var pila: Pila):
        Invierte el orden de los elementos en la pila.

    PilaOrdenada(pila: Pila): Boolean:
        Verifica si los elementos en la pila están ordenados de manera ascendente o descendente.

    CopiarPila(pilaOriginal: Pila): Pila:
        Crea una copia exacta de la pila original.

    VaciarPila(var pila: Pila):
        Elimina todos los elementos de la pila.

    ObtenerElementoEnPosicion(posicion: Integer, pila: Pila): Integer:
        Devuelve el elemento en una posición específica de la pila.

    ConcatenarPilas(pila1, pila2: Pila): Pila:
        Concatena dos pilas, devolviendo una nueva pila con los elementos de ambas.

    PartirPilaEnMitad(pila: Pila; var primeraMitad, segundaMitad: Pila):
        Divide una pila en dos mitades aproximadamente iguales.

    OrdenarPilaAscendentemente(var pila: Pila):
        Ordena los elementos de la pila en orden ascendente.

    BuscarMaximo(pila: Pila): Integer:
        Encuentra el máximo elemento en la pila.

    BuscarMinimo(pila: Pila): Integer:
        Encuentra el mínimo elemento en la pila.

    EliminarElementoEnPosicion(posicion: Integer; var pila: Pila):
        Elimina el elemento en una posición específica de la pila.

    EliminarTodosLosElementos(elemento: Integer; var pila: Pila):
        Elimina todas las ocurrencias de un elemento en la pila.

    ReemplazarElementoViejoPorNuevo(elementoViejo, elementoNuevo: Integer; var pila: Pila):
        Reemplaza todas las ocurrencias de un elemento viejo por un nuevo elemento en la pila.

Unidad Uconjunto:

    Union(conjunto1, conjunto2: Conjunto): Conjunto:
        Realiza la unión de dos conjuntos, devolviendo un nuevo conjunto.

    Interseccion(conjunto1, conjunto2: Conjunto): Conjunto:
        Calcula la intersección de dos conjuntos, devolviendo un nuevo conjunto.

    Diferencia(conjunto1, conjunto2: Conjunto): Conjunto:
        Calcula la diferencia entre dos conjuntos, devolviendo un nuevo conjunto.

    Subconjunto(conjunto1, conjunto2: Conjunto): Boolean:
        Verifica si conjunto1 es un subconjunto de conjunto2.

    ProductoCartesiano(conjunto1, conjunto2: Conjunto): Conjunto:
        Calcula el producto cartesiano de dos conjuntos, devolviendo un nuevo conjunto de pares ordenados.

Unidad Ucola:

    TamanioCola(cola: Cola): Integer:
        Devuelve el número de elementos en la cola.

    InvertirCola(var cola: Cola):
        Invierte el orden de los elementos en la cola.

    ColaIgual(cola1, cola2: Cola): Boolean:
        Compara si dos colas son iguales en términos de sus elementos y su orden.

    ColaOrdenada(cola: Cola): Boolean:
        Verifica si los elementos en la cola están ordenados de manera ascendente o descendente.

    ObtenerElementoEnPosicion(posicion: Integer, cola: Cola): Integer:
        Devuelve el elemento en una posición específica de la cola.

    ConcatenarColas(cola1, cola2: Cola): Cola:
        Concatena dos colas, devolviendo una nueva cola con los elementos de ambas.

    PartirColaEnMitad(cola: Cola; var primeraMitad, segundaMitad: Cola):
        Divide una cola en dos mitades aproximadamente iguales.

    OrdenarColaAscendentemente(var cola: Cola):
        Ordena los elementos de la cola en orden ascendente.

    BuscarMaximo(cola: Cola): Integer:
        Encuentra el máximo elemento en la cola.

    BuscarMinimo(cola: Cola): Integer:
        Encuentra el mínimo elemento en la cola.

    EliminarElementoEnPosicion(posicion: Integer; var cola: Cola):
        Elimina el elemento en una posición específica de la cola.

    EliminarTodosLosElementos(elemento: Integer; var cola: Cola):
        Elimina todas las ocurrencias de un elemento en la cola.

    ReemplazarElementoViejoPorNuevo(elementoViejo, elementoNuevo: Integer; var cola: Cola):
        Reemplaza todas las ocurrencias de un elemento viejo por un nuevo elemento en la cola.


# En un programa
program main;
uses Upila, Uconjunto, Ucola;

Para la unidad Upila:

    InvertirPila
    EliminarElementosRepetidos
    SumarElementosPila
    OrdenarPilaAscendentemente
    CombinarPilas

Para la unidad Uconjunto:

    InterseccionConjuntos
    DiferenciaConjuntos
    CalcularUnionDeConjuntos
    ObtenerElementosComunesEnPilaYConjunto

Para la unidad Ucola:

    DesacolarNElementos
    VaciarColaEnPila
