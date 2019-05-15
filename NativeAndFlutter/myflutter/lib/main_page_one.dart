import 'package:flutter/material.dart';
import 'home_page.dart';
import 'email_page.dart';
import 'airplay_page.dart';
import 'custom_route.dart';
class MainPageOne extends StatefulWidget {
  @override
  _MainPageOneState createState() => _MainPageOneState();
}

class _MainPageOneState extends State<MainPageOne> {
  List<Widget> _bodywidgets = [];
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    _bodywidgets
      ..add(HomePage())
      ..add(EmailPage());

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, CustomRoute(AirplayPage(),RouteAnimationType.slide));
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _bodywidgets[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.email),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _currentIndex = 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}











