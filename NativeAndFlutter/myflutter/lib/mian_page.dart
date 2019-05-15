import 'package:flutter/material.dart';
import 'home_page.dart';
import 'airplay_page.dart';
import 'email_page.dart';
import 'pages_page.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _bottomNavColor = Colors.blue;
  List<Widget> _bodywidgets = [];
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    _bodywidgets
    ..add(HomePage())
    ..add(EmailPage())
    ..add(PagesPage())
    ..add(AirplayPage());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodywidgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavColor,
            ),
            title: Text(
              'home',
              style: TextStyle(color: _bottomNavColor),
            )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _bottomNavColor,
              ),
              title: Text(
                'email',
                style: TextStyle(color: _bottomNavColor),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _bottomNavColor,
              ),
              title: Text(
                'pages',
                style: TextStyle(color: _bottomNavColor),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _bottomNavColor,
              ),
              title: Text(
                'airplay',
                style: TextStyle(color: _bottomNavColor),
              )
          )
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
