import 'package:flutter/material.dart';
import 'animated_text_Info.dart';
import 'package:portfolio_app/responsive.dart';
import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
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
              Responsive.isDesktop(context)
                  ? Text(
                      "Discover my Amazing \nArt Space!",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  : Text(
                      "Discover my Amazing \nArt Space!",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
              if (Responsive.isMobileLarge(context))
                SizedBox(height: defaultPadding / 2),
              AnimatedTextInfo(),
              SizedBox(height: defaultPadding),
              if (!Responsive.isMobileLarge(context))
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
