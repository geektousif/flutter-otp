import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/lang_dropdown.dart';
import '../widgets/button.dart';
import 'number_entry.dart';

class LangChoose extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/gallery_icon.svg'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Please Select Your Language',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 185,
              child: Text(
                'You can change the language at any time',
                style: TextStyle(
                  color: HexColor('#6A6C7B'),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            LangDropDown(),
            SizedBox(
              height: 24,
            ),
            Button(text: 'NEXT', onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NumberEntry(),),); },)
          ],
        ),
      ),
    );
  }
}
