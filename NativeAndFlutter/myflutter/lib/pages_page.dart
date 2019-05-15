import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PagesPage extends StatefulWidget {
  @override
  _PagesPageState createState() => _PagesPageState();
}

class _PagesPageState extends State<PagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('PagesPage'),
        trailing: Icon(Icons.more_horiz),
      ),
      body: Center(
        child: Text('PagesPage'),
      ),
    );
  }
}