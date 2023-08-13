class Carro {
  late Motor _motor; // Associação

  Carro() {
    this._motor = Motor();
  }

  void ligar() {
    _motor.ligarMotor();
  }
}

class Motor {
  void ligarMotor() {
    print("Motor Ligado!");
  }
}

void main() {
  Carro meuCarro = Carro(); // Dependencia
  meuCarro.ligar(); // Chamada da funcionalidade da Classe Carro
}