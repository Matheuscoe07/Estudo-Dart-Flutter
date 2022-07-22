//o nome do arquivo tem sempre que ter widget no final
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../second/pages/second_page.dart';

class CoffeShopWidget extends StatelessWidget {
  final String title; //nao esquecer de declarar no construtor!!
  const CoffeShopWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //elevatedbutton, textbutton e Iconbuttton
    return ElevatedButton( //ElevatedButton é o mais customizável
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        elevation: MaterialStateProperty.all(10),),
      onPressed: () { //NAVIGATOR: PUSH OU POP. Push = vai ate uma pagina. Pop = tira a página.
        Navigator.push(context, MaterialPageRoute( //a ideia do push é empilhar paginas enquanto a do pop é retirar do topo da pilha
          builder: (context) {
          return const SecondPage();
        })); //context é a pagina em que esta e route
      },
      //String imagePath = ''; DECLARANDO VARIAVEL LOCAL PARA O CAMINHO ATÉ A IMAGEM, AI NA DEFINICAO DA IMAGEM VC TROCA O CAMINHO POR ESSA VARIAVEL
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //INSERÇÃO DE IMAGENS
              //Caso a imagem não esteja na internet basta utilizar uma nova pasta assets
              Container(
                //sizedbox é um container vazio, serve apenas para relacionar tamanhos
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/cafe2.jpg'), //inicialmente vai dar um erro pois o flutter nao sabe da existencia da nova pasta assets por isso basta identificar no arquivo pubsec.yaml a existencia dela (caso sejam muitas fotos basta usar um caminho generico até a pasta images e o resto fica em branco)
                    //image: NetworkImage('https://images.unsplash.com/photo-1526401281623-279b498f10f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80')
                  ),
                  //PARA O SIZEDBOX: child: Image.network('https://images.unsplash.com/photo-1526401281623-279b498f10f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80')
                ),
              ),
              //INSERÇÃO DE ÍCONES
              // Padding(
              //   padding: EdgeInsets.only(right: 8),
              //   child: Icon(
              //     Icons.coffee,
              //     size: 48,
              //   ),
              // ),
              Text(
                title,
                style: GoogleFonts.sacramento(fontSize: 50),
              ),
            ],
          ),
          const Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
