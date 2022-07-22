import 'package:flutter/material.dart';

class IconButtonSecondWidget extends StatelessWidget {
  const IconButtonSecondWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      Navigator.pop(context);
      }, 
      icon: const Icon(Icons.close), 
      iconSize: 100, 
      color: Colors.white,
    );
  }
}