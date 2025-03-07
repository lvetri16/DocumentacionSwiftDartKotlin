// Declaración de Variables: En Kotlin, puedes declarar variables utilizando var o val.
// var: Se utiliza para declarar una variable que puede cambiar su valor.
// val: Se utiliza para declarar una variable que no puede ser reasignada (similar a final en Dart).

fun main() {
    // Ejemplo de uso de variables
    var nombre = "Juan" // variable que puede cambiar
    val edad = 30 // variable que no puede cambiar

    // Imprimir el nombre y la edad
    println("Nombre: $nombre")
    println("Edad: $edad")

    // Tipos de Datos: Kotlin es un lenguaje tipado, lo que significa que cada variable tiene un tipo de dato.
    // Tipos básicos: Int, Double, String, Boolean.
    val numero: Int = 10
    val decimal: Double = 3.14
    val texto: String = "Hola, Kotlin"
    val esVerdadero: Boolean = true

    // Imprimir los tipos de datos
    println("Número: $numero")
    println("Decimal: $decimal")
    println("Texto: $texto")
    println("Es verdadero: $esVerdadero")

    // Ejemplo de uso de listas
    val lista: List<String> = listOf("uno", "dos", "tres")
    println("Lista: $lista")

    // Acceder a elementos de la lista
    println("Primer elemento de la lista: ${lista[0]}")

    // Ejemplo de uso de mapas
    val mapa: Map<String, Int> = mapOf("uno" to 1, "dos" to 2)
    println("Mapa: $mapa")

    // Acceder a elementos del mapa
    println("Valor asociado a 'uno': ${mapa["uno"]}")

    // Ejemplo de uso de clases y objetos
    val persona = Persona("Angelo", 25)
    persona.saludar() // Llama al método saludar

    // Ejemplo de uso de herencia
    val estudiante = Estudiante("Maria", 22, "Ingeniería")
    estudiante.saludar()
    estudiante.estudiar()

    // Ejemplo de uso de interfaces
    val trabajador = Trabajador("Carlos", 28, "Desarrollador")
    trabajador.saludar()
    trabajador.trabajar()
}

// Clase Persona: Representa a una persona con nombre y edad.
open class Persona(val nombre: String, var edad: Int) { // Constructor primario

    // Método para saludar
    fun saludar() {
        println("Hola, mi nombre es $nombre y tengo $edad años.")
    }
}

// Clase Estudiante: Hereda de Persona y tiene una carrera.
class Estudiante(nombre: String, edad: Int, val carrera: String) : Persona(nombre, edad) {

    // Método para estudiar
    fun estudiar() {
        println("$nombre está estudiando $carrera.")
    }
}

// Interfaz Trabajador: Define un contrato para trabajadores.
interface TrabajadorInterface {
    fun trabajar() // Método abstracto
}

// Clase Trabajador: Implementa la interfaz TrabajadorInterface.
class Trabajador(nombre: String, edad: Int, val profesion: String) : Persona(nombre, edad), TrabajadorInterface {

    // Implementación del método trabajar
    override fun trabajar() {
        println("$nombre está trabajando como $profesion.")
    }
}