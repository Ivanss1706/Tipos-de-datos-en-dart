void main(List<String> args) {
  //Datos numericos
  int num = 3;
  double num2 = 2.66;

  print(num);
  print(num2);
  //booleanos
  bool valor = true;
  print(valor);

  if (valor == true) print("se cumple");

  //Las variable pueden tomar cualquier tipo de datos si se declara de la siguiente manera.
  var numero = 22;
  var cade = 'Prueba';
  print(numero);
  print(cade);

  String cadena1 = "Hola";
  String cadena2 = 'Como estas';
  print(cadena1);
  print(cadena2);

  //Declaracion de listas

  List<String> Cadenas = <String>[];
  Cadenas.add('Hola como estas?');
  Cadenas.add('Yo estoy bien');
  print(Cadenas);

  // ejemplo de una lista con un tamanio especifico
  List misNumeros = new List.filled(10, null, growable: false);
  print(misNumeros);
  // Mas ejempplos de listas: https://fragmentosdecodigo.home.blog/2020/12/26/tipo-de-datos-lista-en-dart/
  /* Esta línea no es posible ejecutarla,   
     debido a que la lista tiene un tamaño 
     fijo. */

  //invocando a un metodo
  print(numFun());
  Imprime();
  imprimeNombre('Ivan');

  var prueba = new Persona();
  prueba.nombre = 'Julian';
  prueba.edad = 25;
  prueba.saludar();

  Estudiante estudiante1 = new Estudiante();
  estudiante1.nombre = "Ivan";
  estudiante1.edad = 22;
  estudiante1.codigo = "201968701";
  estudiante1.saludar();
}

/* 
     Definicion de metodos, se define primero con el tipo de datos
     despues el nombre del metodo
  */

void Imprime() {
  print('holaaaaaaaaa');
}

int numFun() {
  return 100000;
}

void imprimeNombre(String nombre) {
  //si se ponen entre corchetes los parametros, estos se vuelven opcionales
  print('hola: ' + nombre); //concatenacion
  print('hola: $nombre'); // concatenacion
}

//definicion de clases

class Persona {
  String? nombre;
  int? edad;

  Persona() {}
  void saludar() {
    print('Hola! me llamo: $nombre y tengo $edad anios');
  }
}

//Herencia en dart, se hace con la palabra extends

class Estudiante extends Persona {
  String? codigo;

  Estudiante() {}

  //polimorfismo
  @override
  void saludar() {
    print("Hola soy un estudiante, mellamo $nombre y mi matricula es $codigo");
  }
}
