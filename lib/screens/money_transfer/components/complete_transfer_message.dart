import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/screens/dashboard/dashboard_screen.dart';
import 'package:the_empire/screens/main/mainPage.dart';
import 'package:the_empire/screens/money_transfer/money_transfer_screen.dart';

class CompleteTransferMessage extends StatelessWidget {
  String text1;
  String text2;
  CompleteTransferMessage({required this.text1, required this.text2, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget finishButton = InkWell(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => MoneyTransferScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: height * 0.07,
        child: const Center(
            child: Text("Finish",
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
      body: Stack(alignment: Alignment.center, children: [
        Positioned(
          top: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/dashboard.png'),
                    fit: BoxFit.fill)),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Card(
            elevation: 4,
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Container(
              width: width * 0.8,
              height: height * .4,
              padding: EdgeInsets.only(
                  bottom: height * 0.05, right: width * 0.2,left: width * 0.2,top: height * 0.07,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Completed",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Rubik-Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp),
                  ),
                  CircleAvatar(
                    backgroundColor: brown,
                    radius: 24.sp,
                    child: Icon(
                      Icons.check,
                      color: backgroundColor,
                      size: 32.sp,
                    ),
                  ),
                  SizedBox(height: height*0.01,),
                  Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: grey, fontFamily: 'Rubik', fontSize: 12.sp),
                  ),
                  Text.rich(TextSpan(
                                text: "\$ ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Rubik',
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: text2,
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Rubik',
                                      color: Colors.black,
                                    ),
                                  ),
                                ])),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: height * 0.1),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: finishButton,
          ),
        )
      ]),
    );
  }
}
