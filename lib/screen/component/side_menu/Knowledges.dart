import 'package:flutter/material.dart';
import 'package:portfolio_website/constant/ColorsCons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "Android Native, Kotlin, Java"),
        KnowledgeText(text: "IOS Native, Swift"),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "Git, Github, Gitlab"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key key,
     this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}