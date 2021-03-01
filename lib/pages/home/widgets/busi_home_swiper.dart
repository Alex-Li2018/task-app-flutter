import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

// 轮播图Widget
class BusiHomeSwiper extends StatefulWidget {
  BusiHomeSwiper({Key key}) : super(key: key);
  @override
  _BusiHomeTopBarState createState() => _BusiHomeTopBarState();
}

class _BusiHomeTopBarState extends State<BusiHomeSwiper> {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: window.physicalSize.width,
      height: 143.0,
      color: Colors.blue,
      constraints: BoxConstraints.tight(Size(window.physicalSize.width, 143.0)),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          // 背景底色
          Container(
            width: window.physicalSize.width,
            height: 110.0,
            constraints: BoxConstraints.tight(Size(window.physicalSize.width, 110.0)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0)
              ),
              gradient: LinearGradient(
                // 渐变的色值数组
                colors: [
                  Color.fromARGB(255,225,37,27),
                  Color.fromARGB(255,200,37,25),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // swiper轮播图
          Positioned(
            top: 1.5,
            // 利用 ClipRRect 实现超出隐藏
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
              width: 350.0,
              height: 140.0,
              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return new Image.network("https://imgcdn.huanjutang.com/image/2021/01/05/de14c7751bc64bcd598102ef0c15a0bc.jpg",fit: BoxFit.fill,);
                },
                itemCount: 3,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
              )
            )
            )
          )
        ]
      )
    ); 
  }
}
