class Exemplo {
  static int contador = 0;

  Exemplo() {
    contador++;
  }

  static void mostrarContador() {
    print('O contador é $contador');
  }

  int valorContador() {
    return contador;
  }
}

void main() {
  Exemplo objeto1 = Exemplo();
  print("valor do contador é = ${objeto1.valorContador()}");
  Exemplo objeto2 = Exemplo();
  print("valor do contador é = ${objeto2.valorContador()}");
  Exemplo.mostrarContador(); // Imprime "O contador é 2"
}