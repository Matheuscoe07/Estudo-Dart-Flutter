import 'package:aula4/pages/homepage.dart';
import 'package:flutter/material.dart';

class PrimeiroApp extends StatelessWidget {
  const PrimeiroApp({Key? key}) : super(key: key);

  //Widget sem estado
  //precisa dar um primeiro override que puxa um widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //jeito android de se fazer algo (material é padrao android)
      title: 'Titulo da pagina',
      theme: ThemeData(
        //agora todos os appbars vao ter a mesma cor
        appBarTheme: AppBarTheme(color: Colors.brown.shade100),
      ),
      home: HomePage(),
      ); //Material app é o pai de tudo que vem depois dele
  }
}
