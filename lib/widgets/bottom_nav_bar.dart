import "package:flutter/material.dart";

// 底部tab
class BottomNavBar extends StatefulWidget {
  BottomNavBar({ Key key }) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  void _onItemTapped (val) {
    print(val);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(IconData(0xe7d5, fontFamily: 'iconfont')), title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(IconData(0xe7c0, fontFamily: 'iconfont')), title: Text('精选')),
        BottomNavigationBarItem(icon: Icon(IconData(0xe7d6, fontFamily: 'iconfont')), title: Text('我的'))
      ],//BottomNavigationBarItem 的 icon 用的是 Icon Widget实现的，这里是随便找的图标，先实现功能，后续在改成和 豆瓣电影 的一样
      currentIndex: 0,//默认选中的 index
      fixedColor: Colors.black, //选中时颜色变为黑色
      type: BottomNavigationBarType.fixed,//类型为 fixed
      onTap: _onItemTapped,
    );
  }
}