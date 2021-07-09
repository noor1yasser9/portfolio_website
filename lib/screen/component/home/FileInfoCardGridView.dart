import 'package:flutter/material.dart';
import 'package:portfolio_website/constant/ColorsCons.dart';
import 'package:portfolio_website/model/Project.dart';
import 'package:portfolio_website/model/Recommendation.dart';
import 'package:portfolio_website/util/Responsive.dart';
import 'dart:js' as js;

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key key,
    this.crossAxisCount = 2,
  }) : super(key: key);

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "My Project",
              style: Theme.of(context).textTheme.headline3.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: !Responsive.isMobile(context)
                      ? Responsive.isTablet(context)
                          ? 25
                          : 30
                      : 14),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: demo_projects.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding,
              childAspectRatio: 2.3,
            ),
            itemBuilder: (context, index) =>
                FileInfoCard(info: demo_projects[index]),
          ),
        ],
      ),
    );
  }
}

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key key,
    this.info,
  }) : super(key: key);

  final Project info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: GestureDetector(
        onTap: () {
          js.context.callMethod('open', [info.link]);
        },
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    info.title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                  Spacer(),
                  Icon(
                    Icons.wifi_tethering_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                info.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 16, right: 8),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: info.lang == KOTLIN
                              ? Colors.purpleAccent
                              : info.lang == SWIFT
                                  ? Colors.red
                                  : Colors.amber),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      info.lang,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
