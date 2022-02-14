import 'package:flutter/material.dart';

const Color backgroundColor = Color(0xffF9F8F5);
const Color brown = Color(0xffB4A372);
const Color mediumBrown = Color(0xff9F9165);
const Color darkBrown = Color(0xff93875D);
const Color darkGrey = Color(0xff808B9E);
const Color borderColor = Color(0xff808B9E);


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