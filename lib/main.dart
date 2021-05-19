import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import './screens/lang_choose.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liveasy Authentication',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Liveasy Authentication'),
            backgroundColor: HexColor("#2E3B62"),
          ),
          body: LangChoose(),
          ),
        ),
    );
  }
}
