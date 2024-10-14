import 'imput.dart' as imput;
import 'funcao.dart' as funcao;

void main(){
  print("import");

  calculoUm();
  imput.calculoUm();
  funcao.calculoUm(salario: 10);
}

void calculoUm(){
  print("Metodo do arquivo Imports");
}