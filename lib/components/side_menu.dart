import 'package:flutter/material.dart';
import 'package:portfolio_app/components/area_info.dart';
import 'package:portfolio_app/components/codeing.dart';
import 'package:portfolio_app/components/skills.dart';
import 'package:portfolio_app/constants.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Divider(),
                  SizedBox(height: defaultPadding / 2),

                  //user info
                  AreaInfoText(
                      title: "Address", text: "No: 68/4, Parakrama Mawatha"),
                  AreaInfoText(title: "City", text: "Panadura"),
                  AreaInfoText(title: "Province", text: "Western Province"),
                  AreaInfoText(title: "Country", text: "Sri Lanka"),

                  //skills section
                  Skills(),
                  SizedBox(height: defaultPadding / 2),

                  //codeing section
                  Codeing(),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
