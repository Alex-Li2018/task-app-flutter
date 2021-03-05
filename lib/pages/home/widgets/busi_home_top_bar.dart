import "package:flutter/material.dart";

// 顶部Widget
class BusiHomeTopBar extends StatefulWidget {
  BusiHomeTopBar({Key key}) : super(key: key);
  @override
  _BusiHomeTopBarState createState() => _BusiHomeTopBarState();
}

class _BusiHomeTopBarState extends State<BusiHomeTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      color: Color.fromARGB(255,225,37,27),
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          // logo
          Container(
            width: 40.0,
            height: 44.0,
            child: Icon(
              IconData(0xe6c7, fontFamily: 'iconfont'),
              size: 15.0,
              color: Color.fromARGB(255,255,255,255),
            ),
          ),
          // search
          Expanded(
            child: Container(
              height: 30.0,
              //边框设置
              decoration: new BoxDecoration(
                //背景
                color: Color.fromARGB(255,255,255,255),
                //设置四周圆角 角度
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  top: 0,
                  right: 10,
                  bottom: 0
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      IconData(0xe65c, fontFamily: 'iconfont'),
                      size: 18.0,
                      color: Color.fromARGB(255,201,201,201)
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 0,
                        right: 0,
                        bottom: 0
                      ),
                      child: Text(
                        '请输入搜索内容',
                        style: TextStyle(
                          color: Color.fromARGB(255,35,35,38),
                          fontSize: 12.0
                        )
                      )
                    )
                  ],
                )
              )
            )
          ),
          // share
          Container(
            width: 40.0,
            height: 44.0,
            child: Icon(
              IconData(0xe6c7, fontFamily: 'iconfont'),
              size: 30.0,
              color: Color.fromARGB(255,255,255,255),
            ),
          ),
        ]
      )
    );
  }
}