void  main() {
  void mostrarDados(String nomeAluno, {int? matricula, String endereco = "rua2"}) {
      print('Nome: $nomeAluno');
    print('Matricula: $matricula');
    print('Endereço: $endereco');
  }
    
  


  mostrarDados('João da Silva', matricula: 20230030 , endereco: 'Av. Carapinima'); 
  // saída:
  // Nome: João da Silva
  // Matricula: 20230030
  // Endereço: Av. Carapinima
}
