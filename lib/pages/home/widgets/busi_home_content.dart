import "package:flutter/material.dart";
import "package:task_app/pages/home/widgets/busi_home_item.dart";

// 首页内容区域
class BusiHomeContent extends StatefulWidget {
  BusiHomeContent({Key key}) : super(key: key);
  @override
  _BusiHomeContentState createState() => _BusiHomeContentState();
}

class _BusiHomeContentState extends State<BusiHomeContent> {
  List items = List<String>.generate(1000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255,246,246,246),
      child: Padding(
        padding: EdgeInsets.only(
          top: 20.0,
          left: 10.0,
          right: 10.0
        ),
        child: ListView.builder(
          shrinkWrap: true,//范围内进行包裹（内容多高ListView就多高）
          physics: NeverScrollableScrollPhysics(),//禁止滚动
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: BusiHomeItem(items),
            );
          },
        ),
      )
    );
  }
}