import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'animated_text_Info.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 1,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'assets/images/bg.jpeg',
          fit: BoxFit.cover,
        ),
        Container(
          color: darkColor.withOpacity(0.66),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Discover my Amazing \nArt Space!",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              AnimatedTextInfo(),
              SizedBox(height: defaultPadding),
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding),
                    backgroundColor: primaryColor),
                child: Text(
                  "EXPLORE NOW",
                  style: TextStyle(color: darkColor),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
