import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';

class NotificationScreen extends StatefulWidget {
   NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          CustomAppbar(
            title: 'Notifications',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }
}
