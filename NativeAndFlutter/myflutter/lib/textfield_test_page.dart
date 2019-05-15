import 'package:flutter/material.dart';

class TextFieldTestPage extends StatefulWidget {
  @override
  _TextFieldTestPageState createState() => _TextFieldTestPageState();
}

class _TextFieldTestPageState extends State<TextFieldTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('输入选择')),
      body: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          icon: Icon(Icons.text_fields),
          hintText: '输入姓名',

        ),
        onChanged: _textFieldChanged,
        autofocus: false,
      ),
    );
  }
  void _textFieldChanged(String str){

  }
}
