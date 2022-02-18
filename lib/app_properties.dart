import 'package:flutter/material.dart';

const Color backgroundColor = Color(0xffF9F8F5);
const Color brown = Color(0xffB4A372);
const Color mediumBrown = Color(0xff9F9165);
const Color darkBrown = Color(0xff93875D);
const Color darkGrey = Color(0xff808B9E);
const Color borderColor = Color(0xff808B9E);
const Color sendColor = Color(0xffF36C72);
const Color receivedColor = Color(0xff49D18E);
const Color visaCardColor = Color(0xff4C6FFF);
const Color paypalColor = Color(0xff013187);
const Color lightBlack = Color(0xff4A4956);
const Color lightRed = Color(0xffF29C47);
const Color lightGreen = Color.fromARGB(24, 41, 191, 119);
const Color darkpurple = Color(0xff480F6D);
const Color purple = Color.fromARGB(100, 72, 15, 109);
const Color lightOrange = Color.fromARGB(33, 242, 156, 71);
const Color grey = Color(0xff787786);


const Color  transparentWhite = Color(0xffFFFFFF);


const LinearGradient mainButton = LinearGradient(colors: [
  Color.fromRGBO(236, 60, 3, 1),
  Color.fromRGBO(234, 60, 3, 1),
  Color.fromRGBO(216, 78, 16, 1),
], begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter);

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 6)
];

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}