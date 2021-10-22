import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/main/main_screen.dart';
import 'components/heigh_lights_info.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      HeighLightsInfo(),
      MyProjects(),
    ]);
  }
}
