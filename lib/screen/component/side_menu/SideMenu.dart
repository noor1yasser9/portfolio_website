import 'package:flutter/material.dart';
import 'package:portfolio_website/constant/ColorsCons.dart';
import 'package:portfolio_website/constant/string.dart';
import 'package:portfolio_website/screen/component/side_menu/Coding.dart';
import 'package:portfolio_website/screen/component/side_menu/Knowledges.dart';
import 'package:portfolio_website/screen/component/side_menu/info.dart';
import 'package:portfolio_website/util/AreaInfoText.dart';
import 'package:portfolio_website/screen/component/side_menu/Skills.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:js' as js;



class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 300,
      child: Drawer(
        child: Column(
          children: [
            Info(),
            Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      AreaInfoText(
                        title: "Country",
                        text: "Palestina",
                      ),
                      AreaInfoText(
                        title: "City",
                        text: "Gaza",
                      ),
                      AreaInfoText(
                        title: "Age",
                        text: "22",
                      ),
                      Skills(),
                      SizedBox(height: defaultPadding),
                      Coding(),
                      Knowledges(),
                      Divider(),
                      SizedBox(height: defaultPadding / 2),
                      TextButton(
                        onPressed: () {
                          js.context.callMethod('open', [LINK_CV]);
                        },
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color,
                                ),
                              ),
                              SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset(
                                  "assets/icons/download.svg")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: defaultPadding),
                        color: Color(0xFF24242E),
                        child: Row(
                          children: [
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                js.context
                                    .callMethod('open', [LINK_LINKED_IN]);
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/linkedin.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                js.context
                                    .callMethod('open', [LINK_GITHUB]);
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/github.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                js.context
                                    .callMethod('open', [LINK_TWITTER]);
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/twitter.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                js.context
                                    .callMethod('open', [LINK_BEHANCE]);
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/behance.svg"),
                            ),
                            IconButton(
                              onPressed: () {
                                js.context
                                    .callMethod('open', [LINK_YOUTUBE]);
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/youtube.svg"),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
