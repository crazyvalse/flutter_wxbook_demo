import 'package:flutter/material.dart';
import 'package:flutter_wxbook_demo/content_tabs.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 设置背景、边框、渐变等
        decoration: BoxDecoration(
          // 过渡渐变
          gradient: LinearGradient(colors: [
            Color(0xffedeef0),
            Color(0xffe6e7e9),
          ]),
        ),
        child: ContentTabs(
          // 4. 添加callback
          pageChangedCallBack: (int page){
            setState(() {
              _currentIndex = page;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 解决显示不全的问题
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          _getBottomNavigationBarItem('本周', Icons.folder, 0),
          _getBottomNavigationBarItem('分享', Icons.explore, 1),
          _getBottomNavigationBarItem('免费', Icons.donut_small, 2),
          _getBottomNavigationBarItem('长安', Icons.person, 3),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  _getBottomNavigationBarItem(String title, IconData icon, int index) {
    return new BottomNavigationBarItem(
      // 默认情况下
      icon: Icon(
        icon,
        color: Colors.grey,
      ),
      // 激活情况下
      activeIcon: Icon(
        icon,
        color: Colors.blue,
      ),
      // 标题
      title: Text(
        title,
        style: TextStyle(
          color: _currentIndex == index ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}
