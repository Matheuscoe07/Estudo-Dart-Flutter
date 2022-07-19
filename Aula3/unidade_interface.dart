import 'paciente.dart';

abstract class IEntregador {
  late String nome;

  void entregar(LojaDoRonaldo loja, String bairro);
}
