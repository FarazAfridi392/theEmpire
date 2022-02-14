import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
class GoogleButton extends StatelessWidget {
  const GoogleButton();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (_) => RegisterPage()));
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
            const Text("Google",
                style: TextStyle(
                    color: darkGrey, fontFamily: 'Rubik', fontSize: 18.0))
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