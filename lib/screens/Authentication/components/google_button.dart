import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';

import 'package:the_empire/screens/main/mainPage.dart';
class GoogleButton extends StatelessWidget {
  const GoogleButton();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => MainPage()));
      },
      child: Container(
        width: width / 1.5,
        height: height * 0.07,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/google.png',
            ),
            SizedBox(
              width: width * 0.03,
            ),
             Text("Google",
                style: TextStyle(
                    color: darkGrey, fontFamily: 'Rubik', fontSize: 14.sp))
          ],
        )),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(9.0),
          color: Colors.white,
        ),
      ),
    );
  }
}