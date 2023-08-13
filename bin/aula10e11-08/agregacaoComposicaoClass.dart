import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    _nome = nome;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
    };
  }
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    _nome = nome;
    _dependentes = dependentes;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes.map((dependente) => dependente.toJson()).toList(),
    };
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeprojeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeprojeto;
    _funcionarios = funcionarios;
  }

  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios.map((funcionario) => funcionario.toJson()).toList(),
    };
  }
}
void main() {
  // 1. Criar varios objetos Dependentes
  Dependente dependente1 = Dependente("nikolas");
  Dependente dependente2 = Dependente("thaisa");
  Dependente dependente3 = Dependente("spider");
 
  Dependente dependente4 = Dependente("nikolas1");
  Dependente dependente5 = Dependente("thaisa1");
  Dependente dependente6 = Dependente("spider1");
 
  //print(dependente1._nome);
  // 2. Criar varios objetos Funcionario
  List<Dependente> dependentesPaulao = [dependente1, dependente2, dependente3];
  List<Dependente> dependentesAline = [dependente4, dependente5, dependente6];
 
  Funcionario funcionario1 = Funcionario("paulao",dependentesPaulao);
  Funcionario funcionario2 = Funcionario("aline",dependentesAline);
  // 3. Associar os Dependentes criados aos respectivos
  //    funcionarios
 
 
  // 4. Criar uma lista de Funcionarios
  List<Funcionario> funcionarios = [funcionario1, funcionario2];
 
  // 5. criar um objeto Equipe Projeto chamando o metodo
  //    contrutor que da nome ao projeto e insere uma
  //    coleção de funcionario
  EquipeProjeto equipeProjeto = EquipeProjeto("shapeInexplicavel", funcionarios);
 
  // 6. Printar  o objeto Equipe Projeto.
 
  print(equipeProjeto._nomeProjeto);
  for (int i = 0; i < equipeProjeto._funcionarios.length; i++) {
    print(equipeProjeto._funcionarios[i]._nome);
   
    for (int z = 0; z < equipeProjeto._funcionarios[i]._dependentes.length; z++) {
    print(equipeProjeto._funcionarios[i]._dependentes[z]._nome);
    }
  }
 

  // 7. Printar no formato JSON o objeto Equipe Projeto.
  // Serializar objeto EquipeProjeto para JSON
  final equipeProjetoJson = jsonEncode(equipeProjeto.toJson());
  print(equipeProjetoJson);
}
/* RESULTADO FINAL
 {
  "nomeProjeto":"shapeInexplicavel",
  "funcionarios":[{
    "nome":"paulao",
      "dependentes":[{"nome":"nikolas"},{"nome":"thaisa"},{"nome":"spider"}]
    },{
    "nome":"aline",
      "dependentes":[{"nome":"nikolas1"},{"nome":"thaisa1"},{"nome":"spider1"}]}]}
 */
