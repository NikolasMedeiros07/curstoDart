// ignore: file_names
class Pessoa {
  late String nome;
  late int idade;

  Pessoa(this.nome, this.idade);

  void imprimirDados() {
    print("Nome: $nome, idade: $idade");
  }
}

void main() {
  Pessoa pessoa1 = Pessoa("Jose", 30);
  Pessoa pessoa2 = Pessoa("Maria", 24);
  pessoa1.imprimirDados();
  pessoa2.imprimirDados();
}