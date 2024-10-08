void main(){
  print('Main');
  
  calculoSalario();

  calculoSalarioComParametro(1000);

  double salario = calculoSalarioComParametroERetorno(2000);
  print('O Salário do funcionário é: $salario');

  String valorRetorno = calculoSalarioComParametroERetorno2(50, 'Carla Munari');
  print('Retorno => $valorRetorno');

  valorRetorno = calculoSalarioComParametroERetorno3(1500, 'Maria');
  print('Retorno => $valorRetorno');

  calculoUm();

}

// tipo do retorno
// nome
// parametro de entrada

void calculoSalario(){
  print('Calculo Salário');
}

void calculoSalarioComParametro(int codigoFuncionario){
  print('Calculo Salário ${codigoFuncionario * 50}');
}

double calculoSalarioComParametroERetorno(int codigoFuncionario){
  double salario = codigoFuncionario * 50; 
  print('Calculo Salário $salario');

  return salario;
  
}

String calculoSalarioComParametroERetorno2(int codigoFuncionario, String nomeFuncionario){
  double salario = codigoFuncionario * 50; 
  String valorRetorno = 
  'Calculo de Salário do funcionário $nomeFuncionario é: $salario';
  print(valorRetorno);
  return valorRetorno;
  
}

String calculoSalarioComParametroERetorno3(int codigoFuncionario, [String nomeFuncionario = 'carla']){
  double salario = codigoFuncionario * 50; 
  String valorRetorno = 
  'Calculo de Salário do funcionário $nomeFuncionario é: $salario';
  print(valorRetorno);
  return valorRetorno;
  
}

void calculoUm({double salario = 1.0}){
  double resultado = salario * 100;
  print(resultado);
}