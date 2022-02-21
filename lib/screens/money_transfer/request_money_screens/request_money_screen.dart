import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/money_transfer/components/complete_transfer_message.dart';

class RequestMoneyScreen extends StatefulWidget {
  const RequestMoneyScreen({Key? key}) : super(key: key);

  @override
  _RequestMoneyScreenState createState() => _RequestMoneyScreenState();
}

class _RequestMoneyScreenState extends State<RequestMoneyScreen> {
  TextEditingController receiver = TextEditingController();
  TextEditingController reason = TextEditingController();
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
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(
                    //     builder: (_) => CompleteTransferMessage(
                    //       text1: "Amount Sent",
                    //       text2: amount.text,
                    //     ),
                    //   ),
                    // );
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
            padding: EdgeInsets.only(left: width*0.09,top: height*0.03,bottom: height*0.02),
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
        ],
      ),
    );
  }
}
