// COMENTARIOS
// Comentarios de una línea empiezan con //
/* Los comentarios de varias líneas
   utilizan /* para abrirlos y */ para cerrarlos,
   y se pueden anidar  */

// SENTENCIAS
/* Las sentencias simples terminan al finalizar la línea y las compuestas
 * forman bloques de código encerrados en llaves '{' '}'.
 * Opcionalmente se puede utilizar el punto y coma ';' para terminar
 * una sentencia, y es necesario si se quiere utilizar varias en una
 * misma línea.
 */
var var1 = 1
var var2 = 2; var var3 = 3
if var1 == var2 {
    var1 = 0
}

// VARIABLES
/* Las variables deben ser declaradas con 'var' o 'let' y siempre
 * tienen tipos.
 * 'var' declara una variable que puede ser modificada,
 * mientras que 'let' declara una constante cuyo valor solo de puede asignar
 * una primera vez (aunque puede ser calculado).
 * El tipo se debe especificar después del nombre, separado por
 * dos puntos ':', o al después del último nombre en el caso de varias
 * declaraciones por línea sin inicialización.  El tipo se puede omitir si la variable se
 * inicializa de inmediato con algún valor; el compilador infiere el tipo
 * a partir del valor asignado.
 */
var variable: Int = 0
var var01, var02, var03: Double
var var_tipo_auto = 10
var var11: Int = 1, var12: Double = 2.0, var13 = 1.1
let const1: Int, const2 = 3
const1 = 1
//const2 = 2  // Error, no se puede cambiar la constante una vez inicializada

// Como caso especial, en un contexto de asignación, se puede usar piso '_'
// para descartar explícitamente el valor asignado (requerido en algunos casos).

/* Los identificadores pueden escribirse en Unicode, salvo que no deben ser
 * caracteres de operadores, puntuación, espacios, algunos de dibujos por
 * consola, ni puede empezar con un número.
 */
var 😸 = "Gato feliz"

// TIPOS DE DATOS

// --ENTEROS
/* Hay tipos de entero con signo y sin signo de 8, 16, 32 y 64 bits.
 * Además hay dos tipos sin tamaño específico que toman el tamaño según
 * el tamaño de las direcciones de memoria de la plataforma (32bits, 64bits).
 * Ninguno de los tipos son intercambiables.
 */
var int8: Int8, int16: Int16, int32: Int32, int64: Int64, int: Int
var uint8: UInt8, uint16: UInt16, uint32: UInt32, uint64: UInt64, uint: UInt
int8 = 80
//int64 = int8  // Error, los tipos son distintos, incluso a un entero más
                // grande se requiere una conversión explícita

// Con los miembros estáticos 'min' y 'max' se puede obtener los tamaños
// mínimo y máximo de los tipos enteros
Int.min; Int.max;

// --PUNTO FLOTANTE
/* Hay dos tipos de número con punto flotante, 'Float' de 32 bits
 * y 'Double' de 64 bits.  Sus tamaños mínimo y máximo se pueden obtener con
 * los miembros estáticos 'leastNormalMagnitude' y 'greatestFiniteMagnitude'.
 * También incluyen valores infinitos positivos y negativos así como
 * Not-a-Number (no es un número)
 */
var float: Float, double: Double

// --BOOLEANOS
/* No son compatibles con los enteros.  Solo hay dos valores,
 * las constantes 'true' y 'false'.
 */
var booleano: Bool = true
booleano = false

// --CADENAS Y CARACTERES
/* Hay un tipo de cadena de texto 'String' y un tipo de carácter 'Character'.
 * Los caracteres son caracteres abstractos Unicode, que pueden estar
 * compuestos por varios puntos de código o unidades de código,
 * pero representan un elemento gráfico único visible.
 * Se puede obtener el tamaño de una cadena con el miembro 'count'
 */
var cadena: String = "Una cadena", caracter: Character = "1"
// Nótese que los literales de caracteres son iguales que los de cadena,
// pero con un solo carácter.

// --VECTORES
/* O Arrays.  Los vectores 'Array<Tipo>' requieren especificar un 'Tipo'
 * para los elementos.  Alternativamente, el tipo se puede escribir con
 * corchetes '[Tipo]', y es la recomendación.
 * La mutabilidad de los Array depende de si se asigna a una variable o
 * constante.
 */
var enteros1: [Int], enteros2 = [0, 2, 3]
let fijos = [1, 2, 3]
// Se accede a los elementos escribiendo el índice, partiendo de 0,
// entre corchetes y a la derecha de la variable
//fijos[0] = 0  // Error, no se puede modificar constante 'fijos'
enteros2[0] = 1
let vector_vacio: [Double] = []  // Para un vector vacío se debe indicar
                                 // el tipo

// --CONJUNTOS
/* Los 'Set<Tipo>' almacenan elementos no repetidos (comparados igual)
 * con el Tipo indicado de manera desordenada.  Tienen operaciones y
 * predicados de conjuntos en sus métodos como unión o prueba de inclusión.
 * Los elementos tienen que ser 'Hasheable', es decir, implementar
 * un método 'hash' que devuelva valores iguales para objetos comparados
 * iguales.
 */
var conjunto: Set = [3, 5, 7]  // Se requiere la especificación del tipo 'Set'
                               // más no de los elementos para construir un
                               // conjunto a partir de un literal de vectores.
let conjunto_vacío: Set<Double> = []  // Se debe indicar el tipo completo
                                      // si está vacío

// --DICCIONARIOS
/* Los 'Dictionary<Clave, Valor>' tienen permiten almacenar y encontrar
 * elementos de tipo 'Valor', buscándolos por elementos de tipo 'Clave';
 * éstos últimos deben ser 'Hasheable'.  Alternativamente, se puede
 * escribir el tipo como '[Clave: Valor]'.
 */
var diccionario: [Int: String] = [0: "cero", 1: "uno"]
var diccionario_vacio: [Int: String] = [:]

// --TUPLA
/* Las tuplas son contenedores heterogéneos de elementos de distintos tipos
 * utilizados para trasladar varios valores en un grupo.  El tipo de una
 * tupla depende de su cantidad de elementos, el tipo de cada uno y el orden
 * en que están esos tipos.
 * Los tipos de las tuplas se indican con la lista de tipos de los elementos
 * entre paréntesis '(Tipo1, Tipo2, Tipo3)'.
 * Se puede añadir etiquetas a cada tipo y a cada elemento en los literales,
 * como en una llamada a función.
 * A los elementos se pueden acceder como miembros numéricos o con
 * las etiquetas, si se definen.
 */
var tupla1 = ("Uno", "Dos", "Tres")
var tupla2: (ent: Int, dob: Double, flot: Float) = (ent: 1, dob: 2.0, flot: 3.3)
tupla2.0 == tupla2.ent; tupla2.1 == tupla2.dob; tupla2.2 == tupla2.flot

// --OPCIONAL
/* Los tipos pueden volverse opcionales.  Un opcional es un tipo nuevo que
 * está basado en un tipo subyacente 'envuelto' y permite que el valor pueda
 * no estar presente (como nulo).
 * Para poder tratar con el valor almacenado, primero hay que verificar
 * que esté presente y luego desenvolverlo para obtener el tipo subyacente.
 * Está pensado para permitir que algún parámetro o estado sea opcional
 * pero que el programador esté en la obligación de conocer la validez del
 * estado de tal variable con anticipación antes de trabajar con ella.
 * Los tipos opcionales se indican con un signo de interrogación '?'
 * después del tipo normal.
 * Nota: sí se puede asignar un valor normal a una variable opcional,
 *   pero no al revés.
 * Nota: sí se permiten comparaciones de igualdad con otros valores.
 */
var opcional: String? = "Ok, aquí está presente"
var presente: String

// Desenvolvimiento forzado
// Tomar forzadamente el valor y detener el programa si no está presente
presente = opcional!  // Se añade un '!' luego del valor opcional

// Fusión de nulo
// Proveer un valor por defecto en caso de que el opcional no esté presente
presente = opcional ?? "100% Presente"

// Encadenamiento opcional
// Acceder a un miembro de un valor opcional si está presente y continuar
// con el programa, o de lo contrario ignorar el resto de la expresión y
// propagar el vacío.  Aunque permite acceder al miembro condicionalmente,
// también conserva la propiedad de opcional porque el resultado puede no
// existir.
opcional?.count

// Enlace opcional
// Ejecutar condicionalmente un bloque de código con una nueva variable
// a la que se le asigna la versión no opcional del valor opcional.

// o 'let'; puede ser otro nombre; se puede reutilizar el nombre original y
if    var presente = opcional {  // omitir la asignación: if var opcional {
    // Hacer algo con valor presente
} else {
    // Hacer algo si está ausente, se puede omitir esta cláusula 'else'
}

// En su mayoría similar a...
if opcional != nil {
    var presente = opcional!
    // Hacer algo con valor presente
} else {
    // Hacer algo si está ausente
}

// LITERALES
/* Los literales no tienen un tipo específico prefijado.
 * En su lugar, pertenecen a una categoría general de tipo y su tipo
 * concreto debe indicarse explícitamente con el uso de un
 * constructor de tipo 'ej. UInt16(8)' o se determina implícitamente
 * según el contexto, como cuando se asigna a una variable con tipo
 * prefijado, se opera con un valor con tipo prefijado o se escoge
 * un tipo por defecto en muchos casos (Int, Double, String)
 */

// --nil
/* Es el estado especial que indica la ausencia de un valor del tipo correcto
 * en un valor opcional.  Sólo se puede asignar a variables opcionales.
 */
opcional == nil
presente != nil
opcional = nil

// Enteros
/* Puede haber ceros extra sin valor y pisos '_' como separador de digitos
 * después del primer dígito del literal (sin contar el prefijo).
 */
int8   = 0__009_8_  // Literal decimal
int16  = 0x09_50    // Literal hexadecimal
uint32 = 0o755      // Literal octal
uint16 = 0b100_101  // Literal binario

// Punto flotante
/* Aplica el mismo caso con ceros y piso '_' que con los enteros.
 * El piso '_' no puede estar justo después del punto.
 * Deben tener dígitos a ambos lados del punto.
 * Pueden llevar un exponente para una potencia multiplicadora
 */
float  = 1_234.2e2     // Literal decimal, potencia base 10 -> * 10^2
double = 0x1_8_A.F_p3  // Literal hexadecimal, potencia base 2 -> * 2^3
// Valores especiales
1.0 / 0.0   // +Inf, Double.infinity
-1.0 / 0.0  // -Inf
0.0 / -1.0  // -0
0.0 / 0.0   // NaN, Double.nan

// Los valores deben convertirse al mismo tipo para poder realizar
// operaciones entre ellos en la mayoría de los casos.  Para esto se usa
// el constructor de tipo

// Booleano, explicado arriba.

// Contenedores (vetores, conjuntos, diccionarios, tuplas), explicado arriba
// Se puede obtener la cantidad de elementos de muchos contenedores con
// 'count', así como hay otros métodos disponibles.
// Se puede escribir una coma al final del último elemento en los literales.
[0, 2, 4, 5,]
//         ^

// Cadenas de texto
/* Se pueden escribir escapes tipo C dentro de los literales para representar
 * caracteres especiales o escapar las comillas de cierre:
 *   \0 (nulo), \\ (barra invertida), \t (tabulación), \n (nueva línea),
 *   \r (retorno de carro), \" (comilla doble), \' (comilla simple),
 *   \u{n} (punto de código Unicode, donde n es un número hexadecimal
 *   de 1 a 8 dígitos)
 *
 * Se pueden escribir literales de cadena multilínea con tres comillas dobles
 * de apertura y cierre.  Las tres comillas de apertura deben estar seguidas
 * inmediatamente por un salto de línea; luego el texto literal comienza
 * a partir de la línea siguiente, con un sangrado opcional; y las tres
 * comillas de cierre deben aparecer por sí solas en una última línea, que
 * no forma parte del texto literal, y con un sangrado menor o igual que
 * el de las líneas precedentes de todo el texto literal.
 * El sangrado de las últimas tres comillas dobles se elimina del resto
 * de las líneas del literal, dejando algún sobrante de cada línea, si lo hay.
 * Para que los saltos de línea no formen parte del texto, se puede añadir
 * una barra invertida '\' justo antes de ellos para que no se incluyan en
 * el texto literal, excepto en la última línea porque su salto
 * no forma parte del texto literal.
 *
 * Se pueden escribir cadenas delimitadores extendidos al añadir una misma
 * cantidad de numerales '#' al comienzo y final, fuera de las comillas,
 * del literal.  Permite escribir las comillas solas sin cerrar el literal
 * y hace que los escapes requieran la misma cantidad de numerales justo
 * después de la barra invertida para que se interpreten, que de otro modo
 * se deja la barra intacta.
 */
"Una línea\nDos\u{20}líneas"
// Una línea
// Dos líneas

"""
    Un gran trozo de texto.
        "Puede contener comillas dentro, dijo alguien."
    ...siempre y cuando no hayan tres sucesivas sin escapar.  \
    Esta línea es una continuación de la anterior.
    """  // Sangrado de 4 espacios
/* Comienza en la siguiente línea:
Un gran trozo de texto.
    "Puede contener comillas dentro, dijo alguien."
...siempre y cuando no hayan tres sucesivas sin escapar.  Esta línea es una continuación de la anterior.*/

#"\ruta\de\windows\con\"comillas""\sin\duplicar\barras"#
// \ruta\de\windows\con\"comillas""\sin\duplicar\barras

// INTERPOLACIÓN DE CADENA
/* Se puede escribir una expresión de Swift entre paréntesis dentro de un
 * literal de cadena y luego escapar el paréntesis izquierdo con
 * barra invertida '\' para hacer que se evalúe la expresión contenida,
 * se convierta su valor a texto y se reemplace toda la expresión por
 * el resultado.
 */
var nombre = "Pedro"
"¡Hola, \(nombre)!  ¿Cómo te va?"
"Al realizar algunos cálculos, '\(uint32 >> 2 * 3)' ...obtuve este número."

// OPERADORES
/* Swift tiene operadores unarios, binarios y uno ternario.
 * Los operadores unarios tienen la particularidad de que deben escribirse
 * junto a su operando, sin espacio intermedio.  Como consecuencia de esto,
 * los demás operadores deben ya sea escribirse completamente juntos a sus
 * operandos, o mejor, separarse de ambos con espacios.
 * Además, los operadores deben separarse con espacios entre sí.
 * Swift permite al usuario sobrecargar los operadores para nuevos tipos
 * e incluso definir nuevos operadores compuestos por alguna secuencia
 * de símbolos permitidos no usada, como '+-' o '/-/'; esta flexibilidad
 * genera la necesidad de separar con espacios los operadores y unir los
 * unarios a sus operandos para evitar ambigüedad.
 *
 * Los operadores son:
 *     =   Asignación simple.  Si se escriben literales de
 *         tuplas de ambos lados, se realiza una asignación múltiple.
 *         No devuelve valor.
 *     + - * /   Operadores aritméticos sin desbordamiento.  Estos producen
 *               un error durante la ejecución si una operación entera fuese a
 *               desbordarse
 *               + y - pueden ser unarios o binarios.
 *               + también sirve para concatenar cadenas de texto.
 *     &+ &- &*   Operadores aritméticos con desbordamiento.
 *                Similares a los anteriores pero permiten explícitamente
 *                un desbordamiento.
 *     %   Resto/residuo de división entera, no módulo, incluso con números
 *         negativos.  El signo del divisor se ignora.
 *     == != < > <= >=   Operadores de comparación (igual, distinto, menor, etc.)
 *                       Los resultados son booleanos.
 *                       Compara tuplas elemento a elemento, hasta 6
 *     ! && ||   Operadores lógicos NO, Y y O.  Trabajan con booleanos.
 *               Y y O tienen la misma precedencia.
 *     cond ? sí : no   Condicional ternario.  Si 'cond' == true, se evalúa
 *                      a la expresión 'sí', de lo contrario evalúa a 'no'
 *                      También se puede escribir en algunos casos como:
 *                      if cond {
 *                          sí
 *                      } else {
 *                          no
 *                      }
 *                      donde 'sí' y 'no' son expresiones solamente,
 *                      y la expresión if/else es el valor de una sentencia
 *                      return o throw, o el lado derecho de una asignación.
 *     ??   Operador de fusión de nil.  Devuelve el operando izquierdo de
 *          valor opcional si no es 'nil', de lo contrario se evalúa al
 *          operando derecho.
 *     ... ..<   Operadores de rango, cerrado y semiabierto, unarios y binarios
 *               Crean objetos de rango 'Range<Tipo>', útiles para iteraciones
 *               y particiones de colecciones.  El cerrado incluye ambos
 *               extremos, mientras que el semiabierto excluye el extremo final.
 *               Las formas unarias permiten omitir alguno de los extremos para
 *               los rangos cerrados, y omitir el extremo inicial para los
 *               rangos semiabiertos. Estos cuentan desde/hasta el límite más
 *               distante posible según el contexto, posiblemente infinito.
 *     ~ & | ^   Operadores NOT, AND, OR y XOR en bits.  Como en C.
 *     << >>   Operadores de desplazamiento de bits hacia izquierda o derecha.
 *             El comportamiento del de desplazamiento hacia derecha depende
 *             de si el operando es un tipo con signo o no; en los tipos con
 *             signo el desplazamiento es con extensión de signo; el resto
 *             de los desplazamiento son con extensión de cero.
 *             Los bits del operando izquierdo se desplazan la cantidad
 *             indicada por el operando derecho.
 *     += -= *= /= %= &+= &-= &*= ~= &= |= ^= <<= >>=
 *     Operadores de asignación compuesta.  Realizan la misma función que sus
 *     equivalentes no compuestos y asignan el resultado a la variable de la
 *     izquierda.
 *
 *     is   Operador de comprobación de tipo.  Indica si el operando izquierdo
 *          es del tipo a la derecha.
 *     as   Operadperatorsor de conversión de tipo.  Convierte el valor a la izquierda
 *          al tipo a la derecha.
 *     .== .!= .< .> .<= .>=   Operadores de comparación por elemento.
 *                             Realizan la comparación elemento a elemento
 *                             en operandos SIMD
 */

print("El perímetro de un triángulo equilátero de lado \(1<<2) es \(2*2 * (5%4 | 2))")

// ESTRUCTURAS DE SELECCIÓN Y REPETICIÓN
/* Están las sentencias 'if'/'else' y 'switch'/'case' para bifurcar el flujo de
 * ejecución del programa.  Mientras que está disponible 'for-in', 'while' y
 * 'repeat'/'while' para crear bucles e iteraciones.
 * La expresión de condición, que debe ser booleana, así como las variables
 * de iteración o selección pueden estar entre paréntesis, como en C, pero
 * no es necesario.  Las llaves que rodean al cuerpo de sentencias ejecutables
 * sí son obligatorias, incluso para una sola sentencia.
 */

if nombre.contains("P") {  // 'if' permite ejecutar el cuerpo condicionalmente
                           // basado en la condición entre 'if' y '{'
    print("Saludos, \(nombre)!")
} else if nombre.contains("0") {  // la cláusula 'else' permite ejecutar
                                  // un cuerpo distinto si no se cumple la
                                  // condición del 'if'; se puede encadenar
                                  // otro 'if' para que se ejecute si, además,
                                  // satisface la nueva condición
    print("Saludos...")
} else {  // Las cláusulas 'else if'/'if' son opcionales
    print("Saludos, estimado.")
}

// 'switch' permite ejecutar alguno de varios bloques de código posibles
// en función del valor de la expresión que le sigue (que no tiene que ser
// boolena), ejecutando el bloque 'case' que tenga una coincidencia con
// dicho valor; en el caso más simple, la coincidencia es una comparación
// de igualdad, pero se pueden utilizar patrones y otras expresiones.

var par: (Int, Int) = (fijos[0], fijos[2])

switch par {  // 'switch' funciona con más que números, a diferencia de C
    case (0, _):  // Se puede usar piso '_' para coincidir con cualquier valor
        print("El par tiene su primer elemento nulo")
    case (_, 0):  // La sentencia 'switch' termina al final del primer
                  // caso tomado, no se requiere break como en C
        print("El par tiene su segundo elemento nulo")
    case (1, let y):  // Parte de una tupla o todo el valor se puede guardar
                      // temporalmente en una variable o constante,
                      // coincidiendo con cualquier valor para ella.
        print("El par tiene primer elemento 1 y segundo \(y)")
    case (..<0, ..<0):  // Se puede comparar contra rangos
        print("Los dos elementos del par son negativos 😲")
    case (_, _) where par.0 == par.1:  // Puede escribirse una cláusula 'where'
                                       // adicional para comprobar una
                                       // condición arbitraria en algún caso,
                                       // como un 'if'
        print("Los dos elementos del par son iguales")
    case let (x, y) where x < y:  // Más comprensible, y puede usarse 'var'
                                  // o 'let' para toda la tupla
        print("El segundo elemento del par es mayor que el primero")
    case (3, 2):
        print("El par es (3, 2), y... ")
        fallthrough  // Se puede usar 'fallthrough' para ejecutar el cuerpo
                     // del caso siguiente incondicionalmente,
                     // como en C sin un break
    default:  // Es lo mismo que haber escrito 'case _:', coincide con todos
              // los casos no contemplados previamente.
              // 'default' tiene que escribirse de último, y puede ser necesario
              // porque 'switch' tiene que cubrir todos los casos posibles
        print("El par tiene elementos positivos")
}

for num in fijos {  // 'for-in' permite recorrer iterables, ejecutando
                    // el cuerpo por cada elemento. 'num' por defecto
                    // es una constante, como si se hiciese
                    // 'let num = fijos[i]' al comienzo de cada iteración;
                    // esto se puede cambiar explícitamente con 'var'
    print(num, terminator: "  ")
}
print()

for (clave, valor) in diccionario {  // Se puede iterar un diccionario
                                     // para obtener tuplas, y las tuplas se
                                     // pueden desempaquetar por asignación
                                     // múltiple
    print(clave, valor, separator: ": ", terminator: "  ")
}
print()

while uint32 > 0 {  // 'while' permite ejecutar repetidamente su cuerpo
                    // mientras se cumpla la condición que le sigue
    print(uint32)
    uint32 /= 2
}

repeat { // 'repeat'/'while' es similar a 'while', pero siempre ejecuta
         // el cuerpo al menos una vez, incluso si no se cumple la condición
    print(uint32)
    uint32 += 30
} while uint32 <= 0

// Funciones y clausuras (lambdas)
/* Las funciones se definen con 'func', seguido del nombre de la función,
 * seguido de la lista de parámetros entre paréntesis, una flecha '->',
 * el tipo de valor devuelto por la función, y el cuerpo encerrado entre
 * llaves '{}'; los parámetros se separan por comas ',' en la lista,
 * especificando nombre y tipo separado por dos puntos ':',
 * precedido opcionalmente por una etiqueta que se usará para nombrar
 * el parámetro en las llamadas a la función en lugar de su nombre normal.
 * Las funciones son objetos en Swift, lo cual implica que se pueden recibir
 * funciones como argumentos, se pueden devolver desde otras funciones,
 * y se pueden guardar en variables; además se pueden anidar sus definiciones.
 * El tipo de una función se indica con la los tipos de la lista de parámetros,
 * como una tupla y el tipo de devolución, separado por la flecha
 * '(Tipo1, Tipo2) -> Tipo3'.
 * Los parámetros son opcionales, pero no los paréntesis.
 * El tipo de devolución se puede omitir sólo si la función no devuelve un
 * valor; se devuelve un valor especial de tipo Void,
 * que es una tupla vacía '()'.
 * El valor que devuelve una función se indica con una expresión precedida por
 * 'return'; 'return' se puede omitir si el cuerpo de la función consiste
 * solamente de una expresión, se devuelve implícitamente su valor.
 * Las funciones pueden acceder a todas las variables y constantes accesibles
 * desde su lugar de definición, aun cuando se llaman fuera de ese alcance;
 * cuando se refiere a estas variables "libres" dentro de la función, extienden
 * su tiempo de vida más allá de su alcance original, mientras la función
 * que se refiere a ellas exista.
 *
 * Las clausuras son funciones sin nombre (técnicamente las funciones son
 * tipos especiales de clausuras). Se escriben con la firma de función (
 * la lista de parámetros, la flecha y el tipo de valor devuelto) al comienzo
 * del cuerpo, dentro de las llaves, y separándola del resto del cuerpo
 * con la palabra 'in'.  Si el tipo de la clausura se puede inferir por el
 * contexto, se pueden omitir los tipos de sus parámetros o los de devolución,
 * según sea el caso, escribiendo solo los nombres de los parámetros;
 * y si se omite los tipos de los parámetros, también se pueden omitir los
 * paréntesis que los encierra.
 * Si los tipos se pueden inferir, puede referirse a los parámetros
 * por número como '$0', '$1', etc, y en tal caso se tiene que omitir
 * la lista de parámetros; al utilizar los parámetros de esta manera,
 * el número del parámetro de mayor numeración tiene que coincidir con la
 * cantidad de parámetros del tipo inferido de la clausura
 * (máx. '$3', 4 parámetros, '$0' hasta '$3').
 * En cualquier caso, si se omite la lista de parámetros, se tiene que omitir
 * la palabra 'in' que separa los parámetros del cuerpo de la clausura.
 * Si la clausura se pasa como el último argumento de una función que se llama,
 * se puede escribir como una clausura final; es un formato alternativo donde
 * la clausura se escribe fuera de los paréntesis de llamada de función,
 * justo después de ellos, sin la etiqueta de argumento. Además, se pueden
 * pasar varias clausuras finales como los últimos argumentos de la llamada,
 * pero la etiqueta de argumento se omite sólo para la primera. Y si una
 * clausura final es el único argumento de una función llamada, se pueden
 * omitir los paréntesis de llamada a la función.
 * Finalmente, las clausuras pueden declarar una lista de capturas, que son
 * declaraciones de constantes que toman el valor que tiene alguna variable
 * externa (libre) en el momento de definición de la clausura, fijando el
 * valor de la variable para la clausura;
 * en tal caso se tiene que escribir 'in'.
 */

func unaFuncion(param1: Int, param2: String) -> Double {
    return Double(param2.count / param1)  // La conversión debe ser explícita
}
print(unaFuncion(param1: 2, param2: "1234"))  // En la llamada, se tienen que
                                              // escribir las etiquetas de los
                                              // de los parámetros

// etiqueta nombre_parámetro: Tipo
// en la definición se utiliza el nombre del parámetro
func unaFuncion(num param1: Int, texto param2: String) -> Double {
    Double(param2.count / param1)  // Se puede omitir 'return' porque la
                                   // la expresión es todo el cuerpo
}
print(unaFuncion(num: 2, texto: "1234"))  // En la llamada, se utiliza la
                                          // etiqueta del parámetro en lugar
                                          // de su nombre original

// unaFuncion(texto: "1234", num: 2)  // Error: los argumentos tienen que estar
                                      // en orden, aunque se mencionen por
                                      // nombre

// Si la etiqueta es piso '_', entonces el argumento se escribe sin etiqueta
// en la llamada.
// Se puede indicar un valor por defecto para un parámetro, en cuyo caso
// se puede omitir el argumento correspondiente y se toma el valor por defecto
// en su lugar.
func unaFuncion(_ param1: Int, param2: String = "1234") { // No devuelve nada
    print(param2.count / param1)
}
unaFuncion(2)
unaFuncion(2, param2: "123456")

// Los parámetros son constantes y no se pueden cambiar directamente dentro
// de la función. 'inout' escrito justo antes del tipo permite que el
// parámetro se pueda modificar, y además modifica el valor original de la
// variable que se le pasa como argumento (y el argumento tiene que ser una
// referencia directa a una variable).
// Un tipo 'Tipo...' indica un parámetro variádico, que recibe una candidad
// variable y posiblemente nula de argumentos; dentro del cuerpo, es un
// vector con elementos del tipo declarado '[Tipo]'.
// Void es igual que no devolver nada.
func otra_funcion(_ bidir: inout Int, _ variadico: String...) -> Void {
    print(bidir, variadico)
    bidir &+= 1
    bidir &*= 2
    print(bidir)
}
int = 0
otra_funcion(&int, "Uno", "Dos", "Tres")  // El argumento para el parámetro
                                          // 'inout' requiere '&' prefijado
                                          // para indicar explícitamente el
                                          // comportamiento 'inout'.
                                          // Los argumentos variádicos se pasan
                                          // como argumentos separados.

func orden_superior(_ fun1: () -> ()) -> () -> Int { // Recibe función,
                                                      // devuelve función
    fun1()
    var var_interna = 0
    func interna() -> Int {
        var_interna &+= 1
        print(var_interna)
        return var_interna
    }
    return interna
}
var interna = orden_superior({() -> Void in
    print("Clausura")
})
int = interna()
print("int =", int)

_ = orden_superior({() in
    print("Sin tipo de devolución")
})
_ = orden_superior({print("Sin argumentos explícitos")})
_ = orden_superior() {
    int &+= 1
    print("Clausura final")
}
print("int =", int)

interna(); interna()
interna = orden_superior { [int] in
    // int &+= 1  // Error: es una constante
    // Similar a: let int = int
    print("Única clausura final, y con captura:", int)
}
interna()  // Se reinicia el contador con respecto a la llamada anterior

var clausura1: (Int, Int) -> Bool = { $0 > $1 }  // Parámetros numéricos.
                                                 // El tipo se infiere

// TIPOS DE TIPOS
/* Hay dos categorías de tipos en Swift, clasificados por la forma como se
 * manejan las asignaciones y pasos de argumentos de sus valores,
 * tipos de valor y tipos de referencia.
 * Casi todos los tipos presentados hasta ahora, incluyendo cadenas de texto
 * y contenedores, son tipos de valor.  Cuando un valor de un tipo de valor
 * se asigna a una variable o constante, o se pasa como argumento a una función,
 * el valor se copia (aunque Swift realiza algunas optimizaciones en muchos
 * casos, pero sin alterar la semántica).  Esto implica que si se asigna un
 * valor de una variable a otra, y luego se altera ésta última, la primera
 * queda sin alteraciones, porque se tienen copias independientes de los
 * valores; esto es cierto incluso cuando se copian vectores, de forma que
 * sus elementos con tipos de valor también se copian y son independientes
 * entre los vectores original y copia.
 * Por otro lado, un valor de tipo de referencia no se copia cuando se asigna
 * o se pasa como argumento, sino que se copia una referencia al valor original,
 * cada variable mantiene una referencia que se utiliza para acceder al mismo
 * valor.  Esto implica que si se altera el valor original, el cambio se verá
 * reflejado en todas las 'copias' del valor; sin embargo, si se asigna un
 * nuevo valor a una variable de algunos de estos tipos, no se reemplaza el
 * valor en todas las variables que comparten el valor anterior, sino solo
 * se reemplaza la referencia en la variable alterada y pierde relación con
 * el valor anterior.  De los tipos presentados hasta ahora,
 * sólo las funciones y clausuras son tipos de referencia.
 * Es relevante resaltar que en Swift, estas semánticas de
 * paso por valor/referencia están enlazadas al tipo de datos de los valores,
 * no a la forma como se manejen las variables (con la excepción de las
 * variables libres de funciones y clausuras).
 */

// ESTRUCTURAS Y CLASES
/* Las clases son tipos de datos compuestos, de referencia, que encapsulan
 * variables y funciones miembros, internas, y permiten la creación de
 * instancias que agrupan sus propiedades (variables y constantes internas),
 * se manejan como un todo y están diseñadas para que sus métodos (funciones
 * internas) trabajen sobre ese estado interno.
 *
 * Las clases de definen con 'class', seguido del nombre de la clase,
 * seguido de un cuerpo entre llaves de definiciones.  Las propiedades y
 * métodos se definen como variables y funciones corrientes, sólo que dentro
 * del ámbito de la clase.  Para crear las instancias (objetos), se llama la
 * clase como si fuera una función.  A los miembros se puede acceder desde las
 * instancias con punto '.', como 'instancia.propiedad' o 'instancia.metodo()'.
 * Además, las clases se pueden declarar dentro de otras clases o dentro de
 * funciones.
 *
 * Las clases pueden tener inicializadores y un desinicializador, que son
 * métodos especiales que son llamados en el momento de creación y destrucción
 * de las instancias.  Los inicializadores se escriben como
 * 'init(p1: t1, p2: t2, ...)', sin 'func' y sin devolución, pero de resto
 * igual a una función; mientras que el desinicializador se escriben como
 * 'deinit', sin paréntesis.  El trabajo del inicializador suele ser
 * proveer valores iniciales para las propiedades y configurar la instancia
 * para alcanzar un estado consistente, mientras que el desinicializador
 * suele usarse para liberar recursos.  Además, los valores iniciales se pueden
 * proveer directamente en la declaración de las propiedades.  Si la clase no
 * define un inicializador explícitamente y además provee valores por defecto
 * para todas sus propiedades, adquiere un inicializador por defecto.
 * Para crear instancias de la clase, también llamadas objetos, se llama la
 * clase como si fuera una función, pero realmente se llama es el inicializador
 * con los argumentos que correspondan.
 *
 * Las propiedades corrientes son 'almacenadas', porque son valores que residen
 * en alguna variable o constante; pero también se pueden definir variables
 * calculadas, cuyo valor se puede calcular automáticamente a través de una
 * función cada vez que se desee acceder a él, y además que se pueda
 * establecer su valor a través de una función que recibe el valor deseado
 * y puede realizar cualquier cosa en lugar de guardarse el valor en la
 * propiedad.  Estas propiedades deben ser 'var', se definen con un cuerpo
 * entre llaves justo después del tipo, que contiene dos funciones,
 * 'get' y 'set', sin 'func', que son la función que recupera y la que
 * establece el valor, respectivamente; 'set' puede omitir su parámetro,
 * en cuyo caso se crea una variable local de reemplazo 'newValue'.
 * La propiedad se puede hacer de solo lectura, impidiendo las asignaciones,
 * omitiendo el setter (pero no se hace constante); y si se hace, el getter
 * se puede escibir sin 'get' y sin su propio par de llaves '{}'.
 *
 * Además, las propiedades almacenadas propias y todas las heredadas (véase
 * más adelante) pueden definir observadores de cambio de valor 'willSet' y
 * 'didSet', que son funciones que se llaman justo antes y justo después de
 * asignar un valor a la propiedad, respectivamente.  Estas funciones se
 * indican similar a 'set' y reciben el valor a asignar o asignado
 * como argumento, y pueden omitir la definición del parámetro, creándose
 * las variables locales 'newValue' y 'oldValue' en su lugar,
 * para 'willSet' y 'didSet' respectivamente.
 *
 * Los miembros de una clase pertenecen a las instancias, pero también
 * es posible declarar propiedades y métodos que pertenezcan a la clase misma,
 * que se acceden con el nombre de la clase y no con sus instancias;
 * tales miembros son llamados estáticos.  Los miembros estáticos se declaran
 * prefijando su declaración con 'static'.  Los métodos estáticas sólo pueden
 * interactuar con miembros estáticos directamente, y los métodos normales
 * sólo con miembros normales; para que un método de una categoría pueda
 * hacer referencia a un miembro de la otra categoría, debe calificar el
 * nombre del método con el nombre de la clase ('Clase.miembro') para la
 * interacción normal a estático o con una instancia construida previamente
 * ('instancia.miembro') para la interacción estático a normal.
 *
 * Una clase puede heredar las propiedades y métodos de otra clase;
 * esto se indica con dos puntos ':' después del nombre de la clase derivada,
 * seguido de la clase base.  Si la clase derivada sobreescribirá métodos
 * definidos ya en alguna clase base o propiedades calculadas, se debe escribir
 * 'override' al comienzo de la declaración de las funciones respectivas.
 * Además, una clase puede adoptar protocolos (definidos más adelante),
 * indicados luego de los dos puntos ':', luego de la clase base si la hay,
 * separados por coma ','.  Para acceder a las definiciones de las propiedades
 * calculadas, métodos y (des)inicializadores de la clase base cuando existe
 * una anulación (override) para ellos, se puede utilizar 'super', seguido de
 * punto '.' y el nombre de lo que se desea acceder.
 *
 * Las clases se pueden extender (no es lo mismo que derivar, no como en Java)
 * para añadir definiciones adicionales a una clase ya existente fuera del
 * cuerpo de declaración original.  Las extensiones se indican con 'extension',
 * seguido del nombre de la clase ya declarada, seguido de un cuerpo de
 * declaraciones adicionales entre llaves '{}' y pueden contener declaraciones
 * de propiedades calculadas, métodos, inicializadores de conveniencia nuevos
 * (un tipo especial de inicializador, no cualquiera), tipos internos y se
 * puede adoptar protocolos no adoptados previamente.
 *
 *
 * Las estructuras se declaran como las clases, pero con 'struct' en lugar de
 * 'class'.  Son similares a las clases en muchos aspectos, pero difieren en
 * que son tipos de valor, no de referencia, no pueden heredar clases u otras
 * estructuras (pero sí adoptar protocolos), no tienen desinicializador y no
 * manejan información de sus tipos durante la ejecución.
 * Las estructuras adquieren automáticamente un inicializador por miembros
 * si no define ningún inicializador explícitamente, y éste permite crear
 * instancias de estructuras proveyendo los valores de las propiedades
 * directamente como argumentos.
 *
 * Además, hay enumeraciones, que son como estructuras en varios aspectos, pero
 * no tienen propiedades almacenadas y dentro se definen una o más instancias
 * predefinidas con 'case'; éstas se definen con 'enum' en lugar de 'struct'.
 * Las instancias 'case' son como la lista de valores que pueden tomar todas las
 * instancias del tipo de la enumeración.  La enumeración puede basarse en
 * algún tipo entero o de punto flotante, o en 'String', indicado como una
 * herencia de clases, y hace que los valores de la enumeración tengan valores
 * equivalentes del tipo en que se basa.
 *
 * Los protocolos son como estructuras, declaradas con 'protocol' en lugar de
 *'struct', pero no definen valores para sus propiedades ni cuerpo para
 * sus métodos, y las propiedades deben definirse como 'var' y como si fueran
 * propiedades calculadas con 'get' y opcionalmente 'set' pero sin cuerpo
 * para esas funciones, que indican si la propiedad debe poderse modificar
 * o solo se requiere que se pueda acceder a su valor.
 * Los protocolos son como descripciones de requisitos estructurales de
 * propiedades, métodos, inicializadores, etc. que los tipos que los adoptan
 * deben implementar para 'cumplir' con el protocolo; son similares a las
 * interfaces de Java.
 */

class ClaseBase {
    var variableInstancia = "inicializada"
    static let constanteTipo: String = """
                                    inicialización requerida porque el tipo \
                                    en sí no tiene inicializador
                                    """
    let constanteSinValorPorDefecto: Int
    var propiedadCalculada: Int {
        get {  // solo con getter
            (constanteSinValorPorDefecto < 0 ?
                -constanteSinValorPorDefecto :
                constanteSinValorPorDefecto) * 5
        }
    }
    /* alternativa: var propiedadCalculada: Int {
           (constanteSinValorPorDefecto < 0 ?
                -constanteSinValorPorDefecto :
                constanteSinValorPorDefecto) * 5
       }
    */
    var aux: Int = 0
    var conGetYSet: Int {
        get {
            return aux % 5
        }
        set(nuevo) {
            if nuevo >= 5 || nuevo < 0 { return }
            self.aux = aux - (aux % 5) + nuevo  // aquí es igual con y sin self
        }
    }

    init(_ constanteSinValorPorDefecto: Int) {  // nunca se declara con valor
                                       // de devolución
        // 'self' es necesario porque hay una propiedad y una variable local
        // con el mismo nombre.
        // Toda propiedad sin valor por defecto debe ser inicializada en el
        // inicializador
        self.constanteSinValorPorDefecto = constanteSinValorPorDefecto
        print("Inicializado")
    }

    func metodo() -> String {
        // La constante de tipo requiere nombre calificado (con nombre de clase)
        "\(propiedadCalculada) \(ClaseBase.constanteTipo)"
    }

    static func metodoEstatico(param: Int = 0) {
        print("\(param): \(constanteTipo)")
    }
}

protocol UnProtocolo {
    var variableQueDebeExistir: String { get }
    var variableQueTieneQueSerModificable: Int { get set }
    static func metodoEstaticoQueDebeExistir(numero: Int) -> String
}

class ClaseDerivada: ClaseBase, UnProtocolo {
    let variableQueDebeExistir: String  // Cumplimiento del protocolo
    var variableQueTieneQueSerModificable: Int {
        get { -aux }
        set { aux = -aux }
    }

    static func metodoEstaticoQueDebeExistir(numero: Int) -> String {
        "Implementado: \(numero)"
    }

    init() { // Definición de inicializador anula herencia de inicializador
        // Pasos de inicializador de clase derivada
        // 1: inicializar propiedades de clase derivada
        variableQueDebeExistir = "constante de sólo lectura"

        // 2: llamar inicializador de clase base
        super.init(1)

        // 3: personalizar instancia (opcional)
        aux = 2
    }

    override func metodo() -> String {
        "Método anulado"
    }
}

enum Enumeracion: Int {
    case uno = 1
    case dos, tres, cuatro, cinco

    var nombre: String {
        switch self {
            case .uno:
                "Uno"
            case .dos:
                "Dos"
            case .tres:
                "Tres"
            case .cuatro:
                "Cuatro"
            case .cinco:
                "Cinco"
        }
    }

    func numeroEnString() -> String {
        String(self.rawValue)  // propiedad especial 'rawValue' para acceder
                               // al valor equivalente en que se basa una
                               // enumeración basa en otro tipo
    }
}

struct Estructura {
    var nombre: String
    var valor: Int
    let indice: Enumeracion
}

var objeto = ClaseDerivada()
ClaseDerivada.metodoEstaticoQueDebeExistir(numero: 3)
print(objeto.metodo())

var estructura = Estructura(nombre: "Horas", valor: 1000,  // inicializador
                            indice: Enumeracion.uno)       // por miembros
print("Nombre:", estructura.nombre)
print("Valor:", estructura.valor)
print(estructura.indice)
print("\(estructura.indice.numeroEnString()): \(estructura.indice.nombre)")

extension Estructura: UnProtocolo {
    var variableQueDebeExistir: String {  // El tipo no se infiere
        get { self.nombre }
        set { self.nombre = newValue }
    }
    var variableQueTieneQueSerModificable: Int {
        get { valor }
        set { valor = newValue }
    }
    static func metodoEstaticoQueDebeExistir(numero: Int) -> String {
        var s = Enumeracion.uno.nombre
        print(s)
        return s
    }
}

print(estructura.variableQueDebeExistir)
print(estructura.variableQueTieneQueSerModificable)
print(Estructura.metodoEstaticoQueDebeExistir(numero: 3))


// Y MÁS!!!
/* Swfit tiene muchas otras características, como actores (similares a clases),
 * manejo de errores, expresiones 'try' y sentencias 'guard', macros, genéricos,
 * corrutinas, métodos especiales, atributos especiales para variables y
 * parámetros (como para clausuras escapantes, autoclausuras, etc.), entre otras
 */
