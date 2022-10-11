import 'package:aula6/widgets/appbar/tablet_appbar.dart';
import 'package:aula6/widgets/sections/grid_courses_widget/grid_courses_widget.dart';
import 'package:aula6/widgets/sections/stars_section/stars_section_widget.dart';
import 'package:aula6/widgets/sections/top_section/top_section.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
import '../widgets/appbar/mobile_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        drawer: constraints.maxWidth > Utils.breakpointMobile ? null: Drawer(),
        appBar: constraints.maxWidth > Utils.breakpointMobile
        ? const PreferredSize(
          child: TabletAppbar(), 
          preferredSize: Size(double.infinity, 72),
        )
        : const PreferredSize(
          child: MobileAppbar(), 
          preferredSize: Size(double.infinity, 56)
          ),
          body: Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: ListView(
                children: [
                  TopSectionWidget(),
                  StarSectionWidget(),
                  GridCoursesWidget(),
              ],
                    ),
            ),
          ), //empilhando um monte de widgets
      );
    });
  }
}