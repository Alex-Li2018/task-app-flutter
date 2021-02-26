import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:task_app/pages/home/home_page.dart';
import 'package:task_app/pages/cherry_pick/cherry_pick_page.dart';
import 'package:task_app/pages/me/me_page.dart';
import 'package:task_app/widgets/bottom_nav_bar.dart';

class TaskManageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '任务管理',
      home: App()
    );
  }
}

class App extends StatefulWidget {
  App({ Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> { 
  final _widgetItems = [HomePage(), CherryPickPage(), MePage()];
  int selectedIndex = 0;

  void onItemTapped(val) {
    setState(() {
      selectedIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetItems[selectedIndex]
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: selectedIndex, callback: (val) => onItemTapped(val))
    );
  }
}

void main() {
  runApp(TaskManageApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
      // statusBarColor: Colors.transparent,
      statusBarColor: Color.fromARGB(255,225,37,27),
      ///这是设置状态栏的图标和字体的颜色 
      ///Brightness.light  一般都是显示为白色
      ///Brightness.dark 一般都是显示为黑色
      statusBarIconBrightness: Brightness.dark
    );
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}