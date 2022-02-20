import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';

class CustomBottomBar extends StatefulWidget {
  TabController controller;
  int selectPage;

  CustomBottomBar(
      {Key? key, required this.selectPage, required this.controller})
      : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return BottomAppBar(
      color: brown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: screenHeight * 0.08,
            child: FittedBox(
              child: IconButton(
                color: widget.controller.index == 0
                    ? Colors.white
                    : Colors.white70,
                iconSize: 25.sp,
                icon: const Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    widget.selectPage = 0;
                    widget.controller.index == 0;
                  });

                  widget.controller.animateTo(0);
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 3.sp),
            height: screenHeight * 0.08,
            child: FittedBox(
              child: IconButton(
                color: widget.controller.index == 1
                    ? Colors.white
                    : Colors.white70,
                iconSize: 25.sp,
                icon: Icon(Icons.sync_alt),
                onPressed: () {
                  setState(() {
                    widget.selectPage = 1;
                    widget.controller.index == 1;
                  });
                  widget.controller.animateTo(1);
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 3.sp),
            height: screenHeight * 0.08,
            child: FittedBox(
              child: IconButton(
                color: widget.controller.index == 2
                    ? Colors.white
                    : Colors.white70,
                iconSize: 25.sp,
                icon: const Icon(Icons.payment),
                onPressed: () {
                  setState(() {
                    widget.selectPage = 2;
                    widget.controller.index == 2;
                  });
                  widget.controller.animateTo(2);
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 3.sp),
            height: screenHeight * 0.08,
            child: FittedBox(
              child: IconButton(
                color: widget.controller.index == 3
                    ? Colors.white
                    : Colors.white70,
                iconSize: 25.sp,
                icon: const Icon(Icons.history),
                onPressed: () {
                  setState(() {
                    widget.selectPage = 3;
                    widget.controller.index == 3;
                  });
                  widget.controller.animateTo(3);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
