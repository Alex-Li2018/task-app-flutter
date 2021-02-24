import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:task_app/pages/home/home.dart';
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

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: MainPage(),
      bottomNavigationBar: BottomNavBar()
    );
  }
}

void main() {
  runApp(TaskManageApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      ///这是设置状态栏的图标和字体的颜色 
      ///Brightness.light  一般都是显示为白色
      ///Brightness.dark 一般都是显示为黑色
      statusBarIconBrightness: Brightness.dark
    );
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}