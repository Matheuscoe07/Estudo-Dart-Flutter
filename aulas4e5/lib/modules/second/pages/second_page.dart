import 'package:aulas4e5/modules/second/widgets/icon_button_second_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int numero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          IconButtonSecondWidget(),
          Text(numero.toString(), style: TextStyle(color: Colors.white, fontSize: 50),),
          IconButton(onPressed: () {
            setState(() { //a funcao setstate da um reload eterno na pagina inteira, mas isso é ruim por causa de desempenho de processamento
              numero++;
            });
          }, 
          icon: const Icon(
            Icons.add, 
            size: 100, 
            color: Colors.white,)),
        ],
      ),
      );
  }
}