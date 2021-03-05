// 首页的item组件

import 'package:flutter/material.dart';

class BusiHomeItem extends StatelessWidget {
  final List items;

  BusiHomeItem(this.items);

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: 10.0,
                right: 5.0
              ),
              margin: EdgeInsets.only(
                bottom: 20.0
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255,255,255,255),
              ),
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://imgcdn.huanjutang.com/image/2021/01/15/6d7a1bc2bd3079aad914ed40cd21d69d.jpg',
                    height: 173.0,
                    fit: BoxFit.cover
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      bottom: 3.0,
                      left: 4.0,
                      right: 4.0
                    ),
                    child: Text(
                      '超媛2021春季新款男装潮牌韩版潮流束脚宽松男士小哈伦牛仔裤男A2-1057#N83 黑 28',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255,26,26,26)
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.0,
                      right: 4.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '¥ ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255,102,102,102),
                                decoration: TextDecoration.lineThrough
                              )
                            ),
                            Text(
                              '109.9',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255,102,102,102),
                                decoration: TextDecoration.lineThrough
                              )
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '¥ ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255,250,44,25)
                              )
                            ),
                            Text(
                              '109.9',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255,250,44,25)
                              )
                            )
                          ],
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.0,
                      right: 4.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '¥ ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255,102,102,102),
                                decoration: TextDecoration.lineThrough
                              )
                            ),
                            Text(
                              '109.9',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255,102,102,102),
                                decoration: TextDecoration.lineThrough
                              )
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '¥ ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255,250,44,25)
                              )
                            ),
                            Text(
                              '109.9',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255,250,44,25)
                              )
                            )
                          ],
                        )
                      ],
                    )
                  )
                ]
              ),
            )
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: 5.0,
                right: 10.0
              ),
              margin: EdgeInsets.only(
                bottom: 20.0
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255,255,255,255),
              ),
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://imgcdn.huanjutang.com/image/2021/01/15/6d7a1bc2bd3079aad914ed40cd21d69d.jpg',
                    height: 173.0,
                    fit: BoxFit.cover
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      bottom: 3.0,
                      left: 4.0,
                      right: 4.0
                    ),
                    child: Text(
                      '超媛2021春季新款男装潮牌韩版潮流束脚宽松男士小哈伦牛仔裤男A2-1057#N83 黑 28',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255,26,26,26)
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.0,
                      right: 4.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '¥ ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255,102,102,102),
                                decoration: TextDecoration.lineThrough
                              )
                            ),
                            Text(
                              '109.9',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255,102,102,102),
                                decoration: TextDecoration.lineThrough
                              )
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '¥ ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255,250,44,25)
                              )
                            ),
                            Text(
                              '109.9',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255,250,44,25)
                              )
                            )
                          ],
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.0,
                      right: 4.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '¥ ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255,102,102,102),
                                decoration: TextDecoration.lineThrough
                              )
                            ),
                            Text(
                              '109.9',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255,102,102,102),
                                decoration: TextDecoration.lineThrough
                              )
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '¥ ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255,250,44,25)
                              )
                            ),
                            Text(
                              '109.9',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255,250,44,25)
                              )
                            )
                          ],
                        )
                      ],
                    )
                  )
                ]
              ),
            )
          )
        ],
      );
  }
}