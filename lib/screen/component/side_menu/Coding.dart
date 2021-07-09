import 'package:flutter/material.dart';
import 'package:portfolio_website/constant/ColorsCons.dart';
import 'package:portfolio_website/util/AnimatedCircularProgressIndicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key key,
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
            "Development Language Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Kotlin",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Swift",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.60,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.34,
          label: "JavaScript",
        ),AnimatedLinearProgressIndicator(
          percentage: 0.3,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.25,
          label: "CSS",
        ),
      ],
    );
  }
}