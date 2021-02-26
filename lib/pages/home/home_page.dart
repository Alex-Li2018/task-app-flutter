import "package:flutter/material.dart";
import "package:task_app/pages/home/widgets/busi_home_top_bar.dart";

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
} 

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget> [
          BusiHomeTopBar(),
          Text('底部'),
        ]
      ),
    );
  }
}