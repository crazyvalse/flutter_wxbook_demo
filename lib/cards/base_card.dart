import 'package:flutter/material.dart';

class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subtitleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    // 1. 做边框的处理
    return PhysicalModel(
      // 圆角
      borderRadius: BorderRadius.circular(6),
      // 颜色 - 透明
//      color: Colors.transparent,
      color: Colors.white,
      // 阴影
      elevation: 2.0,
      // 抗锯齿
      clipBehavior: Clip.antiAlias,
      child: Container(
//        decoration: BoxDecoration(color: Colors.white),
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

  // 67. 分析 布局需要 Column、外面需要Padding 、第一行需要是个 Row subtitle的颜色
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
            crossAxisAlignment: CrossAxisAlignment.end,
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

  middleContent() {
    return Container();
  }

  bottomContent() {
    return Container();
  }

  topContentMainTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22),
    );
  }

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
}
