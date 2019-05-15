import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'package:myflutter/mian_page.dart';
import 'main_page_one.dart';
import 'search_demo_page.dart';
import 'textfield_test_page.dart';
const String bookshelfRouteName = 'bookshelf_vc';
const String loginRouteName = 'login';

const String _kReloadChannelName = 'login';
const BasicMessageChannel<String> _kReloadChannel = BasicMessageChannel<String>(_kReloadChannelName, StringCodec());
void main(){
  _kReloadChannel.setMessageHandler(run);
  run(ui.window.defaultRouteName);
}
Future<String> run(String name)async{
  print("新路由为：");
  print(name);
  switch(name){
    case bookshelfRouteName:
      break;
    default:
      runApp(MyApp());
      break;
  }
  return '';
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: TextFieldTestPage()//SearchBarDemo(),//MainPageOne(),
    );
  }
}

