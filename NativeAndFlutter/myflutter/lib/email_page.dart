import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;
class EmailPage extends StatefulWidget {
  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('EmailPage'),
        trailing: Icon(Icons.more_horiz),
      ),

      body: Center(
        child: Stack(
          children: <Widget>[
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints.expand(width: 300,height: 600),
                child: Image.network('http://b.zol-img.com.cn/desk/bizhi/image/3/960x600/1369964516723.jpg',fit: BoxFit.fill,),
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(0)),
                child: BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 2.0,sigmaY: 2.0),
                  child: Opacity(opacity: 0.5,child: Container(
                    width: 300,
                    height: 600,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text('zhongyang',style: Theme.of(context).textTheme.display3,),
                    ),
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}