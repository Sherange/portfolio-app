import 'package:flutter/material.dart';
import '../constants.dart';

class AnimatedCircular extends StatelessWidget {
  const AnimatedCircular({
    Key? key,
    required this.label,
    required this.percentage,
  }) : super(key: key);

  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: defaulDuration,
              builder: (context, double value, child) => Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        color: primaryColor,
                      ),
                      Center(
                        child: Text(
                          (value * 100).toInt().toString() + "%",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ],
                  )),
        ),
        SizedBox(height: defaultPadding),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
