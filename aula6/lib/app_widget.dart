import 'package:aula6/pages/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //material app simboliza que é um app
      title: 'Hands On',
      home: HomePage(),
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
    );
  }
}