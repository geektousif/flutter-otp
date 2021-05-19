import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/button.dart';
import './otp_entry.dart';

class NumberEntry extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<NumberEntry> {
  final _numberController = TextEditingController();

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
                'Please enter your Mobile Number',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 185,
                child: Text(
                  'You’ll receive a 4 digit code to verify next.',
                  style: TextStyle(
                    color: HexColor('#6A6C7B'),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 50,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/india.png'),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        '+91',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        '-',
                        style:
                            TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          controller: _numberController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10)
                          ],
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            letterSpacing: 2.0,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 8, bottom: 6),
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Button(
                text: 'CONTINUE',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpEntry(mobileNumber: _numberController.text,),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
