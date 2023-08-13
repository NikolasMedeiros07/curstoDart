void main() {
  // Criando uma lista vazia
  List<String> minhaLista = [];
  List todos = ["teste2","teste",15,12,25];

  // Adicionando elementos à lista

  minhaLista.add("maçã");
  minhaLista.add("banana");
  minhaLista.add("laranja");
  minhaLista.add("laranja");

  // Imprimindo os elementos da lista
  print(minhaLista);
  print(todos);
  // Acessando elementos da lista pelo índice
  print(minhaLista[0]); // saída: maçã
  print(minhaLista[1]); // saída: banana
  print(minhaLista[2]); // saída: laranja

  // Verificando o comprimento da lista
  print(minhaLista.length); // saída: 3

  // Removendo um elemento da lista
  minhaLista.remove("banana");
  print(minhaLista); // saída: [maçã, laranja]
}