import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liveasy Authentication',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liveasy Authentication'),
          backgroundColor: HexColor("#2E3B62"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/images/gallery_icon.svg'),
              Text('Please Select Your Language'),
              Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                image: SvgPicture.asset('assets/images/deep_blue_ocean.svg'),
                fit: BoxFit.cover,
              ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
