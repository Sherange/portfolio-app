import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../../constants.dart';
import 'flutter_coded_text.dart';

class AnimatedTextInfo extends StatelessWidget {
  const AnimatedTextInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(width: defaultPadding / 2),
          Text("I build "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("Responsive web and mobile app."),
              TyperAnimatedText("Complete e-Commerece app"),
              TyperAnimatedText("Chat app with dark and kight theme"),
            ],
          ),
          SizedBox(width: defaultPadding / 2),
          FlutterCodedText(),
        ],
      ),
    );
  }
}
