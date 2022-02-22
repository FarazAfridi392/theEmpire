import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/models/contact.dart';
import 'package:the_empire/screens/money_transfer/components/complete_transfer_message.dart';
import 'package:the_empire/screens/money_transfer/request_money_screens/add_request_amoun_screen.dart';

class RequestMoneyScreen extends StatefulWidget {
  const RequestMoneyScreen({Key? key}) : super(key: key);

  @override
  _RequestMoneyScreenState createState() => _RequestMoneyScreenState();
}

class _RequestMoneyScreenState extends State<RequestMoneyScreen> {
  TextEditingController receiver = TextEditingController();
  TextEditingController reason = TextEditingController();
  List<Contact> contactList = [
    Contact(
      name: 'George Wilkerson',
      mobileNo: '+12 34523 46326',
    ),
    Contact(
      name: 'Emanuel Mitchell',
      mobileNo: '+92 34523 46326',
    ),
    Contact(
      name: 'Kimberly Evans',
      mobileNo: '+45 34523 46326',
    ),
    Contact(
      name: 'Mario Stewart',
      mobileNo: '+62 34523 46326',
    ),
    Contact(
      name: 'Mario Stewart',
      mobileNo: '+12 34523 46326',
    ),
    Contact(
      name: 'Mario Stewart',
      mobileNo: '+13 34523 46326',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(
            title: 'Request Money',
          ),
          Container(
            height: height * 0.3,
            width: width,
            padding: EdgeInsets.only(
              left: width * 0.09,
              right: width * 0.08,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 3,
                ),
                TextField(
                  controller: receiver,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: height * 0.015),
                      child: Text(
                        'To :',
                        style: TextStyle(
                            color: lightBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik'),
                      ),
                    ),
                    hintText: 'Name, Phone, Email',
                  ),
                  style: const TextStyle(
                      fontSize: 16.0, fontFamily: 'Rubik', color: darkGrey),
                ),
                const Spacer(
                  flex: 1,
                ),
                TextField(
                  controller: reason,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: height * 0.015),
                      child: Text(
                        'For:',
                        style: TextStyle(
                            color: lightBlack,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik'),
                      ),
                    ),
                    hintText: 'Add a Note',
                  ),
                  style: const TextStyle(
                      fontSize: 16.0, fontFamily: 'Rubik', color: darkGrey),
                ),
                const Spacer(
                  flex: 4,
                ),
                InkWell(
                  onTap: () {
                    if (receiver.text.isEmpty || reason.text.isEmpty) {
                      return;
                    }
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => AddRequestAmount(
                          
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: height * 0.07,
                    child: const Center(
                        child: Text("Proceed",
                            style: TextStyle(
                                color: backgroundColor,
                                fontFamily: 'Rubik',
                                fontSize: 18.0))),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: brown,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.09,
              top: height * 0.03,
            ),
            child: Text(
              'Your Contacts :',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: lightBlack,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              
              padding: EdgeInsets.zero,
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.09,
                    top: height * 0.015,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      radius: 18.sp,
                      backgroundColor: brown,
                      child: const Icon(
                        Icons.person,
                        color: backgroundColor,
                      ),
                    ),
                    title: Text(
                      contactList[i].name!,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: lightBlack,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Rubik'),
                    ),
                    subtitle: Text(
                      contactList[i].mobileNo!,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: darkGrey,
                          fontSize: 14.sp,
                          
                          fontFamily: 'Rubik-Regular'),
                    ),
                  ),
                );
              },
              itemCount: contactList.length,
            ),
          )
        ],
      ),
    );
  }
}
