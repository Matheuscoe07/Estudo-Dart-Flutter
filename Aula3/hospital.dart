import 'paciente.dart';
import 'unidade_interface.dart';

class Motoca implements IEntregador {
  @override
  String nome;

  Motoca(String this.nome);
  bool lanterna = true;

  @override
  void entregar(LojaDoRonaldo loja, String bairro) {
    print('Entregador: ' + this.nome);
    print('Entrega de noite: ' + (lanterna ? 'Sim' : 'Não'));
    print('Loja de Comida: ' + loja.nome);
  }
}
