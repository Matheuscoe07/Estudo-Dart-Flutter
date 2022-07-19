import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        //title: const Text('Meu primeiro app'), //vai ser sempre constante
        //backgroundColor: Colors.black,
        elevation: 0,
        actions: const [
          Icon(Icons.search, color: Colors.black,),
        ],
          leading: const Icon(Icons.menu),
        ),
      body: Column( //coluna como no excel por exemplo. Vai empilhando as informações
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            'Hoje é um ótimo dia para tomar café!',
            style: TextStyle(fontSize: 30),
            ),
        ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.coffee, size: 48,),
            Text('Capuccino', style: TextStyle(fontSize: 24),),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
      ], //children em formato de lista
      ),
    );
}
}