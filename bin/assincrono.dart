void main() async{

  late int resultado;

  print('Chamar Servidor ${DateTime.now()}');

  await buscarInformacaoServidor().then((value) => resultado = value);

  print('Recuperei dados do Servidor ${DateTime.now()}');

  print(resultado);

}

Future<int> buscarInformacaoServidor() async{ //usar processamento futuro

  print('Indo ao servidor ${DateTime.now()}');

  // Simulando chamada ao Servidor
  await Future.delayed(Duration(seconds: 3)); //metodo faz uma pausa por dois segundos

  print('Indo voltando do Servidor ${DateTime.now()}');


  return 100;
}

//para trabalhar com chamadas assíncronas, devemos utilizar o Future pra identificar que esse metodo vai receber uma chamada futura