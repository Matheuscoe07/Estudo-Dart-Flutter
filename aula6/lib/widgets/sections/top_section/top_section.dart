import 'dart:ui';

import 'package:aula6/utils.dart';
import 'package:flutter/material.dart';

class TopSectionWidget extends StatelessWidget {
  const TopSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > Utils.breakpointMobile 
        ? Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.4,
                child: Image.network('https://images.pexels.com/photos/1092671/pexels-photo-1092671.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', fit: BoxFit.cover,),
              ),
              Positioned(
                left: 24,
                top: 24,
                child: Card(
                  elevation: 3,
                  shadowColor: Colors.blue,
                  color: Colors.black,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    width: 350,
                    color: Colors.black,
                    child: Column(
                      children: [
                        const Text(
                              'Aprenda Flutter no seu tempo',
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                        const Text(
                              'Bora aprender Flutter com o professor Fulano de Tal! Cursos por apenas R\$22,90. Qualidade garantida!',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                        const SizedBox(height: 8,),
                        TextField(
                              cursorColor: Colors.blue,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  hintText: 'Porcurando algo?',
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.search),
                                    color: Colors.white,
                                    onPressed: () {},
                                  )),
                            ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        : Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network('https://images.pexels.com/photos/1092671/pexels-photo-1092671.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', fit: BoxFit.cover,),
              ),
              const SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Aprenda Flutter no seu tempo',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8,),
                    const Text(
                      'Bora aprender Flutter com o professor Fulano de Tal! Cursos por apenas R\$22,90. Qualidade garantida!',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  TextField(
                    cursorColor: Colors.blue,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintStyle: const TextStyle(color: Colors.white),
                      hintText: 'Porcurando algo?',
                      suffixIcon: IconButton(icon: const Icon(Icons.search),
                      color: Colors.white,
                      onPressed: () {},
                      )
                    ),
                  ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}