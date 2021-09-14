import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'animated_linear.dart';

class Codeing extends StatelessWidget {
  const Codeing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Codeing",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinear(percentage: 0.7, label: "React"),
        AnimatedLinear(percentage: 0.8, label: "React Native"),
        AnimatedLinear(percentage: 0.5, label: "Flutter"),
        AnimatedLinear(percentage: 0.4, label: "Dart"),
      ],
    );
  }
}
