import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: children,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
