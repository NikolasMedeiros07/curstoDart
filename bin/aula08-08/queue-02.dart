import 'dart:collection';

void main() {
  Queue<int> numeros = Queue();
  numeros.addAll([1, 2, 3, 4, 5]);
  print(numeros); // Saída: (1, 2, 3, 4, 5)

  numeros.add(6);
  print(numeros); // Saída: (1, 2, 3, 4, 5, 6)

  numeros.removeFirst();
  print(numeros); // Saída: (2, 3, 4, 5, 6)

  numeros.removeLast();
  print(numeros); // Saída: (2, 3, 4, 5)

  numeros.addFirst(1);
  print(numeros); // Saída: (1, 2, 3, 4, 5)

  numeros.addLast(6);
  print(numeros); // Saída: (1, 2, 3, 4, 5, 6)

  Queue<int> numerosInvertidos = Queue.from(numeros.toList().reversed);
  print(numerosInvertidos); // Saída: (6, 5, 4, 3, 2, 1)
}