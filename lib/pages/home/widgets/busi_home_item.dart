// 首页的item组件

import 'package:flutter/material.dart';

class BusiHomeItem extends StatelessWidget {
  final List items;

  BusiHomeItem(this.items);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 12.0
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(20, 51, 51, 51),
            width: 1.0
          )
        )
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2))
            ),
            margin: EdgeInsets.only(right: 20.0),
            child: Image.network(
              'https://imgs.huapai.com/shiyong/2021/2103271622153982.jpeg',
              width: 127.0,
              height: 127.0,
              fit: BoxFit.contain
            )
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'BEHND英文字母印花黑色连衣裙',
                  style: TextStyle(
                    color: Color.fromARGB(255, 51, 51, 51),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '¥298.00',
                        style: TextStyle(
                          color: Color.fromARGB(255,102,102,102),
                          fontSize: 16.0,
                          decoration: TextDecoration.lineThrough
                        )
                      ),
                      // 返利 原价
                      Container(
                        margin: EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 20.0,
                              height: 20.0,
                              color: Color.fromARGB(255,210,82,90),
                              alignment: Alignment.center,
                              child: Text(
                                '返',
                                style: TextStyle(
                                  color: Color.fromARGB(255,255,255,255),
                                )
                              )
                            ),
                            Container(
                              height: 20.0,
                              padding: EdgeInsets.only(
                                left: 4.0,
                                right: 4.0
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(255,210,82,90),
                                  width: 1.0 
                                )
                              ),
                              child: Text(
                                '329.00',
                                style: TextStyle(
                                  color: Color.fromARGB(255,102,102,102),
                                )
                              )
                            )
                          ],
                        )
                      )
                    ]
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child:                       // 当前价
                      Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '¥0.00',
                              style: TextStyle(
                                color: Color.fromARGB(255,210,82,90),
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '限量',
                                    style: TextStyle(
                                      color: Color.fromARGB(255,102,102,102),
                                      fontSize: 16.0,
                                    )
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                      color: Color.fromARGB(255,210,82,90),
                                      fontSize: 16.0,
                                    )
                                  ),
                                  Text(
                                    '份',
                                    style: TextStyle(
                                      color: Color.fromARGB(255,102,102,102),
                                      fontSize: 16.0,
                                    )
                                  ),
                                ]
                              )
                            )
                          ],
                        )
                      )
                )
              ],
            ),
          )
        ],
      )
    );
  }
}