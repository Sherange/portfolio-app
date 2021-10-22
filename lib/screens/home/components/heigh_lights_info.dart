import 'package:flutter/material.dart';
import 'package:portfolio_app/models/projects.dart';
import '../../../constants.dart';

import './animated_counter.dart';
import './heigh_light.dart';

class HeighLightsInfo extends StatelessWidget {
  const HeighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 10,
              text: "+",
            ),
            label: "Projects",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 20,
              text: "+",
            ),
            label: "Videos",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 10,
              text: "+",
            ),
            label: "GitHub Repos",
          ),
        ],
      ),
    );
  }
}
