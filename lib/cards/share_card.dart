import 'package:flutter/material.dart';
import 'package:flutter_wxbook_demo/cards/base_card.dart';

class ShareCard extends BaseCard {
  @override
  BaseCardState createState() => ShareCardState();
}

class ShareCardState extends BaseCardState {
  @override
  topContentMainTitle(String title) {
    return super.topContentMainTitle('分享的联名卡');
  }

  @override
  topContentSubTitle(String title) {
    return super.topContentSubTitle('分享给朋友最多可获得12天无限卡');
  }

  @override
  topContentTailTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        ' / $title',
        style: TextStyle(fontSize: 10),
      ),
    );
  }

  @override
  middleContent() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: Color(0xfff6f7f9)),
        constraints: BoxConstraints.expand(),
        child: Image.asset(
          'images/card_list.png',
          fit: BoxFit.cover,
        ),
        margin: EdgeInsets.only(top: 20),
      ),
    );
  }

  @override
  bottomContent() {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Text(
          '2323121人 创建活动！',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ),
    );
  }
}
