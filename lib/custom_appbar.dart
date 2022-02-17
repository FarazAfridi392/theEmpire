import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
class CustomAppbar extends StatelessWidget {
  String? title;

  CustomAppbar({this.title, });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return Container(
      padding: EdgeInsets.only(top: height*0.05),
              alignment: Alignment.center,
              width: width,
              height: height * 0.17,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/appBar.jpg',
                  ),
                ),
              ),
              child: Text(
                title!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: backgroundColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik'),
              ),
            );
  }
}