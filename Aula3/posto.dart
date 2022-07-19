import 'paciente.dart';
import 'unidade_interface.dart';

class Bikeman implements IEntregador {
  @override
  String nome;

  Bikeman(String this.nome);

  @override
  void entregar(LojaDoRonaldo loja, String bairro) {
    print('Entregador: ' + this.nome);
    print('Loja de Comida: ' + loja.nome);
  }
}
