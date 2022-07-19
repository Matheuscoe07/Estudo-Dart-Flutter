import 'Unidade.dart';

class Hospital /*extends*/ implements Unidade { //herança
  bool leitos = true;
  //Construtor
  Hospital(String nome); /*: super(nome);*/ //super quer dizer que estou chamando o construtor do pai

  @override
  set nome(String nome) { //significa que esta acessando o setter do pai
      if(nome.isNotEmpty && nome.length >= 3) {
      print('Nome da instancia foi alterado');
      this.nome = nome;
      }
  }

  @override
  String get nome => this.nome;
}