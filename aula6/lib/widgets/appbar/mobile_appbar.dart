import 'package:flutter/material.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        //backgroundColor: Colors.black, //fica inutil pq ja foi definido um tema geral no app_widget
        title: const Text(
          'Flutter', 
          style: TextStyle(color: Colors.white),),
        actions: const [ //lsita de widgets
          Icon(Icons.shopping_cart),
          SizedBox(width: 8,),
          Icon(Icons.search),
        ],
      );
  }
}