import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      // 圆角
      borderRadius: BorderRadius.circular(6),
      // 颜色 - 透明
      color: Colors.white,
      // 阴影
      elevation: 2.0,
      // 抗锯齿
      clipBehavior: Clip.antiAlias,
      child: Container(
        child: Column(
          children: <Widget>[
            topContent(),
            middleContent(),
            bottomContent(),
          ],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        top: 26,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              topContentMainTitle('主标题'),
              topContentTailTitle('第几期'),
            ],
          ),
          topContentSubTitle('副标题'),
        ],
      ),
    );
  }

  topContentMainTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22),
    );
  }

  Color subtitleColor = Colors.grey;

  topContentSubTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 11,
          color: subtitleColor,
        ),
      ),
    );
  }

  topContentTailTitle(String title) {
    return Container();
  }

  middleContent() {
    return Container();
  }

  bottomContent() {
    return Container();
  }
}
