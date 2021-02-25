import "package:flutter/material.dart";


class CherryPickPage extends StatefulWidget {
  CherryPickPage({Key key}) : super(key: key);
  @override
  _CherryPickPageState createState() => _CherryPickPageState();
} 

class _CherryPickPageState extends State<CherryPickPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'CherryPickPage'
      ),
    );
  }
}