import "package:flutter/material.dart";

// 底部tab
class BottomNavBar extends StatefulWidget {
  int selectedIndex = 0;
  final callback;

  BottomNavBar({ Key key, this.selectedIndex, this.callback }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int select = 0;
  // 子组件向上传递值
  void _onItemTapped (val) {
    widget.callback(val);
    setState(() {
      select = val;      
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(IconData(0xe7da, fontFamily: 'iconfont')), title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(IconData(0xe7f9, fontFamily: 'iconfont')), title: Text('精选')),
        BottomNavigationBarItem(icon: Icon(IconData(0xe7dd, fontFamily: 'iconfont')), title: Text('我的'))
      ], // BottomNavigationBarItem 的 icon 用的是 Icon Widget实现的，这里是随便找的图标，先实现功能，后续在改成和 豆瓣电影 的一样
      currentIndex: select, // 默认选中的 index
      unselectedItemColor: Color.fromARGB(255,96,98,102), // 未选中的颜色
      fixedColor: Color.fromARGB(255,228,49,48), // 选中时颜色变为黑色
      type: BottomNavigationBarType.fixed, // 类型为 fixed
      onTap: _onItemTapped,
    );
  }
}