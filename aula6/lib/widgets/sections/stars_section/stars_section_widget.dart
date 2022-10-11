import 'package:aula6/widgets/sections/stars_section/widgets/star_widget.dart';
import 'package:flutter/material.dart';

class StarSectionWidget extends StatelessWidget {
  const StarSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Wrap(
          runSpacing: 16,
          spacing: 16,
          alignment: WrapAlignment.center, //quando der overflow ele vai ccentralizar
          children: [
            StarWidget(title:'+45.000 alunos', description: 'Didática garantida'),
            StarWidget(title:'+45.000 alunos', description: 'Didática garantida'),
            StarWidget(title: '+45.000 alunos', description: 'Didática garantida'),
          ],
        ),
      ),
    );
  }
}