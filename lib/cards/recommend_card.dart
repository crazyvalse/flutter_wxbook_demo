import 'package:flutter/material.dart';
import 'package:flutter_wxbook_demo/cards/base_card.dart';

class RecommendCard extends BaseCard {
  @override
  BaseCardState createState() => RecommendCardState();
}

class RecommendCardState extends BaseCardState {
  @override
  void initState() {
    subtitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  topContentMainTitle(String title) {
    return super.topContentMainTitle('本周推荐');
  }

  @override
  topContentSubTitle(String title) {
    return super.topContentSubTitle('送你一天无限卡 免费阅读');
  }

  @override
  middleContent() {
    return Expanded(
      child: Container(
        child: Image.asset(
          'images/card_1.jpg',
          fit: BoxFit.cover,
        ),
        margin: EdgeInsets.only(top: 20),
        // 适配安卓 - 把图片撑满
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
