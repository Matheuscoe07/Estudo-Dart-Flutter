import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  final String title;
  final String description;
  const StarWidget({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min, //caracteristica da column de se expandir de acordo com o tamanho que o widget precisa (o minimo possivel)
      children: [
        const Icon(Icons.star, color: Colors.white, size: 50,),
        const SizedBox(width: 8,),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}