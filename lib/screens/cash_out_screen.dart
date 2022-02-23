import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/numeric_keybpad.dart';
import 'package:the_empire/screens/complete_message_screen.dart';

class CashOutScreen extends StatefulWidget {
  const CashOutScreen({Key? key}) : super(key: key);

  @override
  State<CashOutScreen> createState() => _CashOutScreenState();
}

class _CashOutScreenState extends State<CashOutScreen> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget cashOutButton = InkWell(
      onTap: () {
        if (text.length == 0) {
          return;
        }
        Navigator.of(context, rootNavigator: true).pushReplacement(
          MaterialPageRoute(
            builder: (_) => CompleteMessageScreen(
              text1: 'Amount Withdrawn',
              text2: text,
            ),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: height * 0.07,
        child: const Center(
            child: Text("Cash Out",
                style: TextStyle(
                    color: backgroundColor,
                    fontFamily: 'Rubik',
                    fontSize: 18.0))),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          color: brown,
        ),
      ),
    );
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
                    height: MediaQuery.of(context).size.height * .33,
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
                      height: height * .24,
                      padding: EdgeInsets.symmetric(
                          vertical: height * 0.05,),
                      child: Column(
                        children: [
                          Center(
                            child: Text('Enter The Amount',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: grey,
                                    fontFamily: 'Rubik',
                                    fontSize: 12.sp)),
                          ),
                          Center(
                            child: Text('To Witdraw',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: grey,
                                    fontFamily: 'Rubik',
                                    fontSize: 12.sp)),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Center(
                            child: Text.rich(TextSpan(
                                text: "\$ ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Rubik',
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: text,
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Rubik',
                                      color: Colors.black,
                                    ),
                                  ),
                                ])),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * .05,
                  
                  child: Text(
                    'Cash Out',
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
            height: height * 0.03,
          ),

          Center(child: cashOutButton),
          SizedBox(
            height: height * 0.03,
          )
        ],
      ),
    );
  }

  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
}
