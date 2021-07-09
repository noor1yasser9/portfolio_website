import 'package:flutter/material.dart';
import 'package:portfolio_website/constant/ColorsCons.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_website/util/Responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Container(
        margin: EdgeInsets.all(
            !Responsive.isMobile(context)?Responsive.isTablet(context)?0:10:12
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/bg.jpeg",
              fit: BoxFit.cover,
            ),
            Container(color: darkColor.withOpacity(0.66)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Discover my Amazing ${!Responsive.isMobile(context)?"\n":""}Art Space!",
                    style: Theme.of(context).textTheme.headline3.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: !Responsive.isMobile(context)?Responsive.isTablet(context)?25:40:14
                    ),
                  ),
                  MyBuildAnimatedText(),
                  SizedBox(height: defaultPadding),
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      "EXPLORE NOW",
                      style: TextStyle(color: darkColor),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1,
      child: Row(
        children: [
          SizedBox(width: defaultPadding / 2),
          Text("I build "),
          Expanded(
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  "responsive web and mobile app.",
                  speed: Duration(milliseconds: 60),
                ),
                TyperAnimatedText(
                  "complete e-Commerce app UI.",
                  speed: Duration(milliseconds: 60),
                ),
                TyperAnimatedText(
                  "Chat app with dark and light theme.",
                  speed: Duration(milliseconds: 60),
                ),
              ],
            ),
          ),
          SizedBox(width: defaultPadding / 2),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}