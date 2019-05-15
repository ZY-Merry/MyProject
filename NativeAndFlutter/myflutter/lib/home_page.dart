import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'alive_test_page.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _controller;
  int _count = 0;
  @override
  bool get wantKeepAlive => true;
  void _incrementCounter(){
    setState(() {
      _count++;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Home'),
        trailing: Icon(Icons.more_horiz),
      ),
      body: Column(
        children: <Widget>[
          TabBar(
            controller: _controller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.directions_car,color: Color(0xffff0000),)),
              Tab(icon: Icon(Icons.directions_transit,color: Color(0xffff0000))),
              Tab(icon: Icon(Icons.directions_bike,color: Color(0xffff0000)))
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                TestPage(),
                TestPage(),
                TestPage()
              ],
            ),
          )
        ],
      ),
    );
  }
}
