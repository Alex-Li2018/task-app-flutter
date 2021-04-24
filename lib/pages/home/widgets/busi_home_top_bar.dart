import 'dart:ui';
import "package:flutter/material.dart";
import "package:task_app/api/modules/home/index.dart";

// 顶部Widget
class BusiHomeTopBar extends StatefulWidget {
  BusiHomeTopBar({Key key}) : super(key: key);
  @override
  _BusiHomeTopBarState createState() => _BusiHomeTopBarState();
}

class _BusiHomeTopBarState extends State<BusiHomeTopBar> {

  String banner = '';

  @override
  void initState() {
    super.initState();
    // 请求数据
    this._loadData();
  }

  _loadData() async {
    var list = await getBanner();
    print(list['data']);
    list = list['data']['lists'];
    if (list.length > 0) {
      this.banner = list[0]['img_url'];
      print(this.banner);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: banner != '' ? Image.network(
        banner,
        width: window.physicalSize.width,
        fit: BoxFit.fitWidth
      ) 
      : Container(
        width: window.physicalSize.width,
      )
    );
  }
}