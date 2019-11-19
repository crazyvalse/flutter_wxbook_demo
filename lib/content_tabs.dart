import 'package:flutter/material.dart';

class ContentTabs extends StatefulWidget {
  // 1. 创建一个pageChanged 回调方法
  final ValueChanged<int> pageChangedCallBack;

  // 2. 在构造函数这里注入实例
  const ContentTabs({Key key, this.pageChangedCallBack}) : super(key: key);
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
            // 3. 通过 widget
            onPageChanged: widget.pageChangedCallBack,
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
