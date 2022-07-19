import 'hospital.dart';
import 'unidade_interface.dart';

class LojaDoRonaldo {
  // final torna imutavel
  final String nome;
  String _bairro;
  IEntregador entregador;

  //construtor
  LojaDoRonaldo(
      String this.nome, String this._bairro, IEntregador this.entregador);

  String get bairro => _bairro;

  void delivery() {
    entregador.entregar(this, this._bairro);
  }

  LojaDoRonaldo copyWith(String nome) {
    return LojaDoRonaldo(nome, this._bairro, this.entregador);
  }
}
