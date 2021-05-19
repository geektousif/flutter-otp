import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/button.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_field.dart';

class OtpEntry extends StatefulWidget {
  final String mobileNumber;

  OtpEntry({required this.mobileNumber});

  @override
  _State createState() => _State();
}

class _State extends State<OtpEntry> {
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Verify Phone',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 185,
                child: Text(
                  'Code sent on ' + widget.mobileNumber,
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
              Container(
                padding: EdgeInsets.only(left: 11, right: 11),
                child: Center(
                  child: OTPTextField(
                    length: 6,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 48,
                    fieldStyle: FieldStyle.box,
                    otpFieldStyle: OtpFieldStyle(
                      backgroundColor: HexColor('#93D2F3'),
                    ),
                    outlineBorderRadius: 0,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                    onCompleted: (pin) {
                      _otpController.text = pin;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: null,
                      child: Text('Didn\’t receive the code ?',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: HexColor('#6A6C7B'),
                      ),),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        ' Request Again',
                        style: TextStyle(
                          color: HexColor('#2E3B62'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // RichText(
              //   text: TextSpan(
              //     // Note: Styles for TextSpans must be explicitly defined.
              //     // Child text spans will inherit styles from parent
              //     style: TextStyle(
              //       fontSize: 14.0,
              //       color: HexColor('#6A6C7B'),
              //     ),
              //     children: <TextSpan>[
              //       new TextSpan(text: 'Didn’t receive the code?'),
              //       new TextSpan(text: ' Request Again', style: TextStyle(color: HexColor('#2E3B62') )),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 24,
              ),
              Button(
                text: 'CONTINUE',
                onPressed: () {
                  print(_otpController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
