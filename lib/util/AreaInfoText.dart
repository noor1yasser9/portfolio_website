import 'package:flutter/material.dart';
import 'package:portfolio_website/constant/ColorsCons.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key key,
    this.title,
    this.text,
  }) : super(key: key);

  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectableText(
            title,
            style: TextStyle(color: Colors.white),
          ),
          SelectableText(text),
        ],
      ),
    );
  }
}
