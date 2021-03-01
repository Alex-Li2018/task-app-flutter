import "package:flutter/material.dart";

// 首页内容区域
class BusiHomeContent extends StatefulWidget {
  BusiHomeContent({Key key}) : super(key: key);
  @override
  _BusiHomeContentState createState() => _BusiHomeContentState();
}

class _BusiHomeContentState extends State<BusiHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          ListTile(title: Text('Title1')),
          ListTile(title: Text('Title2')),
          ListTile(title: Text('Title3')),
          ListTile(title: Text('Title4')),
          ListTile(title: Text('Title5')),
          ListTile(title: Text('Title6')),
          ListTile(title: Text('Title7')),
          ListTile(title: Text('Title8')),
          ListTile(title: Text('Title9')),
          ListTile(title: Text('Title10')),
          ListTile(title: Text('Title11')),
          ListTile(title: Text('Title12')),
          ListTile(title: Text('Title13')),
          ListTile(title: Text('Title14')),
          ListTile(title: Text('Title15')),
          ListTile(title: Text('Title16')),
          ListTile(title: Text('Title17')),
          ListTile(title: Text('Title18')),
          ListTile(title: Text('Title19')),
        ],
      )
    );
  }
}