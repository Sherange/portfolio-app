import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'animated_cirular.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircular(
                label: "Flutter",
                percentage: 0.5,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircular(
                label: "React",
                percentage: 0.8,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircular(
                label: "React Native",
                percentage: 0.8,
              ),
            ),
          ],
        )
      ],
    );
  }
}
