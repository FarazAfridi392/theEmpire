import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/screens/dashboard/dashboard_screen.dart';
import 'package:the_empire/screens/main/mainPage.dart';

class CompleteMessageScreen extends StatelessWidget {
  String text1;
  String text2;
  CompleteMessageScreen({required this.text1, required this.text2, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget finishButton = InkWell(
      onTap: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => DashboardScreen()));
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
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.05, horizontal: width * 0.2),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom: height*0.1),
          child: Align(alignment: Alignment.bottomCenter,child: finishButton,),
        )
      ]),
    );
  }
}
