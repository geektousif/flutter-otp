import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LangDropDown extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<LangDropDown> {
  String dropdownValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 216,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        child: DropdownButton(
          isExpanded: true,
          value: dropdownValue,
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 20,
          elevation: 16,
          //style: new TextStyle(fontSize: 20),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['English']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: const TextStyle(fontSize: 16, fontFamily: 'Montserrat', fontWeight: FontWeight.bold),)
            );
          }).toList(),
        ),
      ),
    );
  }
}
