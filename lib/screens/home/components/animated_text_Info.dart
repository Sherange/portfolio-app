import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'flutter_coded_text.dart';
import 'package:portfolio_app/responsive.dart';

import '../../../constants.dart';

class AnimatedTextInfo extends StatelessWidget {
  const AnimatedTextInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("I build "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("Responsive web and mobile app."),
        TyperAnimatedText("Complete e-Commerece app"),
        TyperAnimatedText("Chat app with dark and kight theme"),
      ],
    );
  }
}
