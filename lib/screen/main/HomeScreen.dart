import 'package:flutter/material.dart';
import 'package:portfolio_website/constant/ColorsCons.dart';
import 'package:portfolio_website/screen/component/home/FileInfoCardGridView.dart';
import 'package:portfolio_website/screen/component/home/Header.dart';
import 'package:portfolio_website/screen/component/side_menu/SideMenu.dart';
import 'package:portfolio_website/util/MenuController.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_website/util/Responsive.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> children;

  const HomeScreen({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          children: [
            if (Responsive.isDesktop(context)) SideMenu(),
            Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Header(),
                      ...children,
                      Responsive(
                        mobile: FileInfoCardGridView(
                          crossAxisCount: _size.width < 650 ? 1 : 1,
                        ),
                        tablet: FileInfoCardGridView(),
                        desktop: FileInfoCardGridView(
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
