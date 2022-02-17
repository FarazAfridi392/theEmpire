import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
class MasterCard extends StatelessWidget {
  double height;
  double width;
  MasterCard({required this.height,required this.width });

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: height * 0.1,
                    width: width * 0.3,
                    padding: EdgeInsets.all(height * 0.01),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ABC Bank',
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontFamily: 'Rubik',
                                color: backgroundColor,
                              ),
                            ),
                            Text(
                              '\$',
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontFamily: 'Rubik',
                                color: backgroundColor,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Container(
                          width: 16.sp,
                          height: 16.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: backgroundColor,
                          ),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '5432',
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontFamily: 'Rubik',
                                color: backgroundColor,
                              ),
                            ),
                            Container(
                              height: height * 0.025,
                              width: width * 0.09,
                              child: Image.asset(
                                'assets/mastercard.png',
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
  }
}