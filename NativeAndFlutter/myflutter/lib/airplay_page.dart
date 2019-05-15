import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AirplayPage extends StatefulWidget {
  @override
  _AirplayPageState createState() => _AirplayPageState();
}

class _AirplayPageState extends State<AirplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        trailing: Icon(Icons.more_horiz),
        middle: Text('AirplayPage'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Color(0xffff0000)),
          child: Text('AirplayPage'),
        ),
      ),
    );
  }
}