// ignore_for_file: public_member_api_docs, sort_constructors_first

//static
//final
//const
//abstract
//polimorfismo

void main (){

  EnviarMensagem enviarMensagem = Whatsapp();  
  enviarMensagem.sendMessage();
  
  enviarMensagem = Instagram();  
  enviarMensagem.sendMessage();
 
  enviarMensagem = X();  
  enviarMensagem.sendMessage();

}

abstract class EnviarMensagem { // Classe abstrata EnviarMensagem
  void sendMessage(); //retorno nenhum usando void
}

class Whatsapp implements EnviarMensagem{ // Classe Whatsapp
  @override
  void sendMessage() {
    print('Enviando mensagem pelo Whats');
  }

}
class Instagram implements EnviarMensagem{ // Classe Instagram
  @override
  void sendMessage() {
    print('Enviando mensagem pelo Instagram');
  }

}

class X implements EnviarMensagem{ // Classe X
  @override
  void sendMessage() {
    print('Enviando mensagem pelo X');
  }

}