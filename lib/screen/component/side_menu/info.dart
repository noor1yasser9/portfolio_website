import 'package:flutter/material.dart';
import 'package:portfolio_website/constant/ColorsCons.dart';
import 'package:portfolio_website/constant/string.dart';
import 'dart:js' as js;
class Info extends StatelessWidget {
  const Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        color: Color(0xff242430),
        child: Column(
          children: [
            Spacer(),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(LINK_IMAGE),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 4, left: 16, right: 16),
              child: SelectableText(
                "Noor Yasser El Nahhal",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 4, left: 16, right: 16,bottom: 4),
              child: SelectableText(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: defaultPadding),
                alignment: Alignment.center,
                color: Color(0xFF24242E),
                child: SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      js.context.callMethod('open', [LINK_GITHUB]);
                    },
                    child: Text("Follow me"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF3A3A42),
                    ),
                  ),
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
