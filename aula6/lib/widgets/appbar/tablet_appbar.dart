import 'package:flutter/material.dart';

class TabletAppbar extends StatelessWidget {
  const TabletAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 72,
      title: Row(
        children: [const Text(
          'Flutter', 
          style: TextStyle(color: Colors.white,),
        ),
        const SizedBox(width: 8,),
        Expanded(child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'O que esta procurando?',
              prefixIcon: Icon(Icons.search, color: Colors.grey,),
            ),
          ),
        )),
        const SizedBox(width: 8,),
        const Icon(Icons.shopping_cart),
        const SizedBox(width: 8,),
        ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(side: const BorderSide(color: Colors.white, width: 2), primary: Colors.black), child: const Text('Fazer Login'),),
        const SizedBox(width: 8,),
        ElevatedButton(onPressed: () {}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)), child: const Text('Cadsatre-se', style: TextStyle(color: Colors.black),)),
    ]),
    );
  }
}