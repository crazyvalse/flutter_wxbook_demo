import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget {
  @override
  _SearchAppBarState createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  @override
  Widget build(BuildContext context) {
    // 1. 查看齐刘海有多高
    double paddingTop = MediaQuery.of(context).padding.top;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Colors.white,
      ),
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      // 2. 修正
      margin: EdgeInsets.fromLTRB(20, paddingTop + 10, 20, 5),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Expanded(
            child: Text(
              '热搜',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 20,
            margin: EdgeInsets.only(right: 13),
            decoration: BoxDecoration(color: Colors.grey),
          ),
          Text(
            '书城',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
