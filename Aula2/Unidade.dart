class Unidade {
  //Código: toda unidade de um sistema tem um código
    //NECESSITA ser instanciada e, como é string, começamos no vazio
  String _codigo = ''; // _xxx = private xxx
  String _nome = 'default';
  static String tipo = 'Unidade';

  //Construtor
  Unidade(String this._nome) { //auto atribuição (maravilhoso)
    /*print('instancia: ' + this.nome);
    print('variavel local: ' + nome);
    this.nome = nome;
    print('instancia: ' + this.nome);*/
  }

  //Getters e Setters
  String get nome {
    return 'Unidade: ' + _nome;
  }

  void set nome(String nome) {
    if(nome.isNotEmpty){
      print('Nome da instancia foi alterado');
      this._nome = nome;
    }
  }
}

/*
  static construir(String nome) {
    return Unidade(nome);
  } 
*/