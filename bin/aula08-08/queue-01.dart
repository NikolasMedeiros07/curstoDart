import 'dart:collection';

int main() {
  Queue<int> numeros = Queue.from([1, 2, 3, 4, 5]);
  print(numeros.first); // Saída: 1
  print(numeros.last); // Saída: 5
  numeros.add(6);
  print(numeros); // Saída: (1, 2, 3, 4, 5, 6)
  numeros.removeFirst();
  print(numeros); // Saída: (2, 3, 4, 5, 6)
  return 0;
}