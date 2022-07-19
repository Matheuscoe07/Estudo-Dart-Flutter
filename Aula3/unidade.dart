class Unidade {
  String _codigo = '';
  String _nome = 'defult';
  // _xxx == private xxx
  //construtor
  Unidade(String this._nome) {
    print('pai');
  }

  String get nome {
    return 'Unidade ' + _nome;
  }

  void set nome(String nome) {
    if (nome.length > 4) {
      print('Nome da instancia pai foi alterado.');
      this._nome = nome;
    }
  }
}
