import 'dart:io';

void main(){
  
  stdout.write('Qual é o seu nome?');
  print('\n');

  String? nome = stdin.readLineSync();
  print('\n');

  
  bool conversaoQuantidade = true;

  while (conversaoQuantidade) {

    stdout.write('\n $nome, digite o número de acordo com a operação que deseja realizar: \n 1 - Gramas (g) para Miligramas (mg) \n 2 - Gramas (g) para Microgramas (μg) \n 3 - Gramas (g) para Miliequivalentes (mEq) \n 4 - Gramas (g) para UFC \n 5 - Cancelar' );
    print('\n');

    int operacao = int.parse(stdin.readLineSync()!);

    switch (operacao) {
      case 1:
        stdout.write('Informe a quantidade em Gramas (g) que deseja converter para Miligramas (mg): ');
        double quantidadeGramas = double.parse(stdin.readLineSync()!);
        double quantidadeMiligramas = gramasParaMiligramas(quantidadeGramas);
        print('A quantidade em Miligramas é: ${quantidadeMiligramas.toInt()} mg \n');
        
      break;

      case 2:
        stdout.write('Informe a quantidade em Gramas (g) que deseja converter para Microgramas (μg): ');
        double quantidadeGramas = double.parse(stdin.readLineSync()!);
        double quantidadeMicrogramas = gramasParaMicrogramas(quantidadeGramas);
        print('A quantidade em Microgramas é: ${quantidadeMicrogramas.toInt()} μg \n');
      break;

      case 3:
        stdout.write('Informe o elemento que será convertido para Miliequivalentes: ');
        String? nomeElementoMiliequivalente = stdin.readLineSync();

        stdout.write('Informe a quantidade em Gramas (g) de $nomeElementoMiliequivalente: ');
        double quantidadeGramas = double.parse(stdin.readLineSync()!);

        stdout.write('Informe a Valência do elemento $nomeElementoMiliequivalente: ');
        int valenciaElemento = int.parse(stdin.readLineSync()!);

        stdout.write('Informe o Peso Molecular (PM) do elemento $nomeElementoMiliequivalente: ');
        int pesoMolecularElemento = int.parse(stdin.readLineSync()!);

        double miliequivalentes = gramasParaMiliequivalentes(quantidadeGramas, valenciaElemento, pesoMolecularElemento);
        print('A quantidade de miliequivalentes de $nomeElementoMiliequivalente é: ${miliequivalentes.toStringAsFixed(3)} mEq \n');
      break;
      

      case 5:
        conversaoQuantidade = false;
        print('Saindo... \n');
      break;

      default:
        print('Operação inválida! \n');
      break;

    }

    // Após finalizar algum dos cases, pergunta se deseja continuar a operação
    if (conversaoQuantidade) {
      stdout.write('Deseja realizar outra operação? \n [1] - Sim \n [2] - Não \n');
      int continuaOperacao = int.parse(stdin.readLineSync()!);

      // Chama Função para continuar fazendo ou não, outras operações
      conversaoQuantidade = continuarOperacao(continuaOperacao);
      
    }

  }
}

// Função para converter Gramas para Miligramas
double gramasParaMiligramas(double quantidadeGramas){
  return quantidadeGramas * 1000;
}

// Função para converter Gramas para Microgramas
double gramasParaMicrogramas(double quantidadeGramas){
  return quantidadeGramas * 1000000;
}

// Função para converter Gramas para Miliequivalentes
double gramasParaMiliequivalentes(double quantidadeGramas, int valenciaElemento, int pesoMolecularElemento) {
  return (quantidadeGramas * 1000 * valenciaElemento) / pesoMolecularElemento;
}

bool continuarOperacao(int continuaOperacao) { 
  if (continuaOperacao == 1) {
    return true; // Continue a operação
  } else {
    return false; // Pare a operação
  }
}