// Declaración de Variables: En Dart, puedes declarar variables utilizando var, final o const.
// var: Se utiliza para declarar una variable que puede cambiar su valor.
// final: Se utiliza para declarar una variable que solo puede ser asignada una vez.
// const: Se utiliza para declarar una constante en tiempo de compilación.

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad); // Constructor

  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
}

// Herencia: Dart permite la herencia, lo que significa que puedes crear una clase que herede de otra.
class Estudiante extends Persona {
  String carrera;

  Estudiante(String nombre, int edad, this.carrera) : super(nombre, edad);

  void estudiar() {
    print('$nombre está estudiando $carrera.');
  }
}

void main() {
  // Ejemplo de uso de variables
  var nombre = 'Angelo'; // variable que puede cambiar
  final edad = 25; // variable que no puede cambiar
  const pi = 3.14; // constante

  print('Nombre: $nombre');
  print('Edad: $edad');
  print('Pi: $pi');

  // Tipos de Datos: Dart es un lenguaje tipado, lo que significa que cada variable tiene un tipo de dato.
  // Tipos básicos: int, double, String, bool, List, Map.
  int numero = 10;
  double decimal = 3.14;
  String texto = 'Hola, Dart';
  bool esVerdadero = true;
  List<String> lista = ['uno', 'dos', 'tres'];
  Map<String, int> mapa = {'uno': 1, 'dos': 2};

  print('Número: $numero');
  print('Decimal: $decimal');
  print('Texto: $texto');
  print('Es verdadero: $esVerdadero');
  print('Lista: $lista');
  print('Mapa: $mapa');

  // Ejemplo de uso de clases y objetos
  var persona = Persona('Angelo', 25);
  persona.saludar(); // Llama al método saludar

  // Ejemplo de uso de herencia
  var estudiante = Estudiante('Angelo', 25, 'Ingeniería');
  estudiante.saludar();
  estudiante.estudiar();
}
