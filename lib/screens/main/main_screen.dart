import 'package:flutter/material.dart';
import 'package:portfolio_app/components/side_menu.dart';
import 'package:portfolio_app/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxHeight: maxWidth),
        child: Row(
          children: [
            Expanded(flex: 2, child: SideMenu()),
            Expanded(
              flex: 7,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
