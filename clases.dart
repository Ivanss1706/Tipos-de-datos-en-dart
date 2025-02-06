class Node {
  late var _func;

  //Node(String f);
  Node(var _func);
  String get func {
    return this._func;
  }
}

class Node_internal extends Node {
  // ignore: unused_field
  late Node _izq;
  // ignore: unused_field
  late Node _der;

  Node_internal(String _func, Node izq, Node der) : super(_func) {
    this._izq = izq;
    this._der = der;
  }

  @override
  String get func {
    String res = "";
    res = _izq.func;
    res = res + _func;
    res = res + _der._func;
    return '(' + res + ')';
  }
}

void main() {
  //Declaración de objetos
  Node n2, n3, n5, n6;
  Node_internal n0, n1, n4;

  //Creación de objetos
  n0 = Node_internal('+');
  n1 = Node_internal('*');
  n2 = Node("5");
  n3 = Node("3");
  n4 = Node_internal("-");
  //n5 = Node("x");
  n5 = Node("2");
  n6 = Node("1");

  n0._izq = n1;
  n0._der = n2;
  n1._izq = n3;
  n1._der = n4;
  n4._izq = n5;
  n4._der = n6;

  //Impresión de la expresión matemática
  print(n0._func);

  //n0.sustituir("x", "4");
  //n0.eval();
}
