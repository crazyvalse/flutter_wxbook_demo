import 'package:flutter/material.dart';

class ContentTabs extends StatefulWidget {
  @override
  _ContentTabsState createState() => _ContentTabsState();
}

class _ContentTabsState extends State<ContentTabs> {
  PageController _pageController = new PageController(
    viewportFraction: 0.8,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // 需要撑开布局
        Expanded(
          // Tab 切换用的类
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page){
              print(page);
            },
            children: <Widget>[
              _getWidgetItem(),
              _getWidgetItem(),
              _getWidgetItem(),
              _getWidgetItem(),
            ],
          ),
        )
      ],
    );
  }

  _getWidgetItem() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
    );
  }
}
