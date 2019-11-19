import 'package:flutter/material.dart';

class ContentTabs extends StatefulWidget {
  // 1. 创建一个pageChanged 回调方法
  final ValueChanged<int> pageChangedCallBack;

  // 5.3.3 声明一个需要从app传过来的变量对象
  final ContentTabsProxy contentTabsProxy;

  // 2. 在构造函数这里注入实例
  const ContentTabs({
    Key key,
    this.pageChangedCallBack,
    // 5.3.4 初始化
    this.contentTabsProxy,
  }) : super(key: key);

  @override
  _ContentTabsState createState() => _ContentTabsState();
}

class _ContentTabsState extends State<ContentTabs> {
  PageController _pageController = new PageController(
    viewportFraction: 0.8,
  );

  // 5.3.5 初始化状态的时候，把controller传递给壳子中的pageController
  @override
  void initState() {
    super.initState();
    if (widget.contentTabsProxy != null) {
      widget.contentTabsProxy._pageController = _pageController;
    }
  }

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

// 5.3.1 创建一个代理
class ContentTabsProxy {
  PageController _pageController;
  // 5.3.2 创建jumpToPage方法，提供给app调用
  jumpToPage(int page) {
    _pageController?.jumpToPage(page);
  }
}
