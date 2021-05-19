import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Button extends StatefulWidget {

  final String text;
  final GestureTapCallback? onPressed;

  Button({ required this.text, this.onPressed});

  @override
  _State createState() => _State();
}

class _State extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 216,
      height: 48,
      child: FlatButton(
        onPressed: widget.onPressed,
        child: Text(widget.text),
        color: HexColor('#2E3B62'),
        textColor: Colors.white,
      ),
    );
  }
}
