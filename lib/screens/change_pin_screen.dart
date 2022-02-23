import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/numeric_keybpad.dart';
import 'package:the_empire/screens/complete_message_screen.dart';

class ChangePinScreen extends StatefulWidget {
  const ChangePinScreen({Key? key}) : super(key: key);

  @override
  _ChangePinScreenState createState() => _ChangePinScreenState();
}

class _ChangePinScreenState extends State<ChangePinScreen> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .38,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/dashboard.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  top: height * .12,
                  left: 40,
                  right: 40,
                  child: Card(
                    elevation: 4,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      width: width * 0.3,
                      height: height * .28,
                      padding: EdgeInsets.symmetric(vertical: height * 0.05),
                      child: Column(
                        children: [
                          Center(
                            child: Text('Enter New The Empire Pin',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: grey,
                                    fontFamily: 'Rubik',
                                    fontSize: 12.sp)),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Center(
                            child: Text('augusta@TheEmpire ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: grey,
                                    fontFamily: 'Rubik',
                                    fontSize: 10.sp)),
                          ),
                          Spacer(
                            flex: 14,
                          ),
                          Row(
                            children: [
                              const Spacer(
                                flex: 3,
                              ),
                              CircleAvatar(
                                radius: 10.sp,
                                backgroundColor:
                                    text.isNotEmpty ? lightBlack : lightGrey,
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              CircleAvatar(
                                radius: 10.sp,
                                backgroundColor: 
                                        text.length == 2 ||
                                        text.length == 3 ||
                                        text.length == 4
                                    ? lightBlack
                                    : lightGrey,
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              CircleAvatar(
                                radius: 10.sp,
                                backgroundColor:
                                  text.length == 3 || text.length == 4 ? lightBlack : lightGrey,
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              CircleAvatar(
                                radius: 10.sp,
                                backgroundColor:
                                    text.length == 4 ? lightBlack : lightGrey,
                              ),
                              const Spacer(
                                flex: 3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * .05,
                  child: Text(
                    'Change Pin',
                    style: TextStyle(
                        color: backgroundColor,
                        fontSize: 25.sp,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          // Center(child: Text(text)),

          Expanded(
            child: NumericKeyboard(
              onKeyboardTap: _onKeyboardTap,
              textColor: grey,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              rightButtonFn: () {
                if (text.contains('.') || text.length == 0) {
                  return;
                }
                setState(() {
                  text = text + '.';
                });
              },
              rightIcon: Icon(
                Icons.circle,
                color: grey,
                size: 4.sp,
              ),
              leftButtonFn: () {
                setState(() {
                  if (text.length == 0) {
                    return;
                  }
                  text = text.substring(0, text.length - 1);
                });
              },
              leftIcon: const Icon(
                Icons.backspace,
                color: grey,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.08,
          ),
        ],
      ),
    );
  }

  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
    if (text.length == 4) {
      Navigator.of(context).pop();
    }
  }
}
