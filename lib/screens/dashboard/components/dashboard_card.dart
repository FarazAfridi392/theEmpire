import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';

class DashboardCard extends StatefulWidget {
  double width;
  double height;
  DashboardCard({required this.width, required this.height, Key? key})
      : super(key: key);

  @override
  _DashboardCardState createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        width: widget.width * 0.5,
        height: widget.height * .28,
        padding: EdgeInsets.symmetric(
            vertical: widget.height * 0.035, horizontal: widget.width * 0.07),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Balance',
                      style: TextStyle(
                        fontSize: 9.sp,
                        fontFamily: 'Rubik',
                        color: darkGrey,
                      ),
                    ),
                    Text.rich(TextSpan(
                        text: "\$ ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "1020",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rubik',
                              color: Colors.black,
                            ),
                          ),
                        ])),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: brown,
                        size: 23.sp,
                      ),
                    ),
                    SizedBox(
                      width: widget.width * 0.025,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: brown,
                        ),
                        child: Icon(
                          Icons.person,
                          color: backgroundColor,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1234 **** 4321',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontFamily: 'Rubik-Regular',
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: widget.width * 0.2,
                  height: widget.height * 0.04,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: brown, width: 1.5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'USD',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontFamily: 'Rubik-Regular',
                          color: brown,
                        ),
                      ),
                      DropdownButton<String>(
                        dropdownColor: Colors.white,
                        underline: SizedBox(),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 18.sp,
                          color: brown,
                        ),
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: widget.width * 0.3,
                  height: widget.height * 0.04,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: brown),
                  child: Center(
                    child: Text(
                      'Add Cash',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Rubik-Regular',
                        color: backgroundColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widget.width * 0.3,
                  height: widget.height * 0.04,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: brown),
                  child: Center(
                    child: Text(
                      'Cash Out',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Rubik-Regular',
                        color: backgroundColor,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
