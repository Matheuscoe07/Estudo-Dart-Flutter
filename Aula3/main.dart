import 'hospital.dart';
import 'paciente.dart';
import 'posto.dart';

void main() {
  LojaDoRonaldo loja1 =
      LojaDoRonaldo('RonaldoAlabaster', 'ZS', Motoca('Alfred'));
  loja1.delivery();

  LojaDoRonaldo loja2 = LojaDoRonaldo('RonaldoLolo', 'ZL', Motoca('Clebinho'));
  loja2.delivery();

  loja1 = loja1.copyWith('Ronaldo do Whisky');
  loja1.delivery();
  // CopyWith Patter before loja1 != after loja1
  // before loja1 == after loja1 porem before loja1.nome != after loja1.nome
  // Hospital hospital = Hospital();
  // IUnidade posto = Posto();
  // Paciente usuario = Paciente('avenida', -50, hospital);
  // Paciente usuario2 = Paciente('avenida', -50, posto);
  // print(usuario.nome);
  // print(usuario.idade);
}
