void main() { //Inicio sempre na main
  print('hello world');

  //Tipos de dados
  int quantidade = 12;
  double preco = 12.5; //ponto como divisor decimal
  String name = 'Ronaldo'; //String com aspa única ('')
  bool isDev = true; //axioma de boolean = bool

  //Controles de fluxo
  String tipo = 'vertebrado';
  if (tipo == 'vertebrado') { //há diferenciação entre maiúscula e minúscula
    print('É VERTEBRADO');
  } else if (tipo != 'vertebrado') { 
    print('NÃO É VERTEBRADO');
  } else {
    print('Não sei classificar...');
  }

  switch (name) {
    case 'Ronaldo':
      print('É o Ronaldo!');
      break;
  }

  List<int> lista = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]; //Lista feita com CHAVES
  for(var i = 0 ; i < lista.length ; i++) { //esse tipo de for ja ta obsoleto, atualmente é melhor usar o for passando por uma lista
    print(lista.elementAt(i));
  }

  List<String> nomes = ['hector', 'ronaldo', 'brancas'];
  nomes.forEach((String nomes) {
    print(nomes);
  });

  //Funções
  List<int> listaInteiros = retornarListaInteiros();
  listaInteiros.forEach(exibeValorInt);
  listaInteiros.removeLast(); //retira da lista
  listaInteiros.forEach(exibeValorInt);
}

List<int> retornarListaInteiros() {
  return [9, 8, 7, 6, 5, 4, 3, 2, 1, 0];
}

void exibeValorInt(int valor) {
  print(valor);
}

/*
ANOTAÇÕES GERAIS
- Programação funcional
  - voce impoe uma disciplina de atribuição
  - não da pra ficar mudando ela
  - ela trava em um tipo e ja era
*/