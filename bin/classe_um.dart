// ignore_for_file: public_member_api_docs, sort_constructors_first

void main(){ // Classe Main

  //Objeto carro e suas propriedades que o construtor de Carro pede
  Carro carro = Carro(nome: 'Corolla', 
    cor: 'Prata', 
    velocidade: 220.0, 
    anoDoVeiculo: 2022, 
    tipoLocomocaoVeiculo: 'Terrestre'
  );

  carro.detalhe();

  Veiculo veiculo = Veiculo(ano: 2030, tipoLocomocao: 'Aéreo');
  veiculo.detalhe();
  print(veiculo.toString());

}

// Classe filha
class Carro extends Veiculo{ // Classe carro herda as características da classe Veículo

  String nome;
  String cor;
  double velocidade;

  Carro({ //Método Construtor
    required this.nome,
    required this.cor,
    required this.velocidade,

    required int anoDoVeiculo, // herdou da classe Veiculo
    required String tipoLocomocaoVeiculo, // herdou da classe Veiculo

  }) : super(ano: anoDoVeiculo, tipoLocomocao: tipoLocomocaoVeiculo); 
  // super é uma palavra reservada para fazermos o acesso ao construtor de uma classe que estamos herdando
  
  @override
  void detalhe(){
    print('Estou dentro da classe Filha - Carro');
    print(toString());
    super.detalhe();
    // super acessa as propriedades da classe herdada
    print(super.toString());

  }

  // @override
  // String toString() => 'Carro(nome: $nome, cor: $cor, velocidade: $velocidade)';

}

// Classe Pai
class Veiculo {
  int ano; //propriedade
  String tipoLocomocao; //propriedade

  Veiculo({ // Método Construtor 
    required this.ano,
    required this.tipoLocomocao,
  });

  void detalhe(){
    print('Estou dentro da classe pai Veiculo');
    print(toString());
  }

  @override
  String toString() => 'Veiculo(ano: $ano, tipoLocomocao: $tipoLocomocao)';
}

