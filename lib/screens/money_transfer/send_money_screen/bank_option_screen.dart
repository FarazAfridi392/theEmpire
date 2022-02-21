import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/complete_message_screen.dart';
import 'package:the_empire/screens/money_transfer/components/complete_transfer_message.dart';

class BankOptionScreen extends StatefulWidget {
  const BankOptionScreen({Key? key}) : super(key: key);

  @override
  _BankOptionScreenState createState() => _BankOptionScreenState();
}

class _BankOptionScreenState extends State<BankOptionScreen> {
  TextEditingController receiverBank = TextEditingController();
  TextEditingController amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          CustomAppbar(
            title: 'Money Transfer',
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 5,
              ),
              Card(
                elevation: 6,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 25),
                  height: height * 0.1,
                  width: width * 0.8,
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance,
                        color: brown,
                        size: 26.sp,
                      ),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      const Text(
                        'Select Bank',
                        style:  TextStyle(
                        fontSize: 16.0, fontFamily: 'Rubik', color: grey),
                      ),
                      SizedBox(width: width*0.241,),
                      DropdownButton<String>(
                        dropdownColor: Colors.white,
                        underline: SizedBox(),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 18.sp,
                          color: grey,
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
              ),
              const Spacer(
                flex: 1,
              ),
              Card(
                elevation: 6,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 25),
                  height: height * 0.1,
                  width: width * 0.8,
                  child: TextField(
                    controller: receiverBank,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.account_balance,
                          color: brown,
                          size: 26.sp,
                        ),
                        hintText: 'Receiver Bank Account'),
                    style: const TextStyle(
                        fontSize: 16.0, fontFamily: 'Rubik', color: grey),
                  ),
                  // Text(
                  //   'Card Transfer',
                  //   style: TextStyle(
                  //       color: lightBlack,
                  //       fontSize: 16.sp,
                  //       fontWeight: FontWeight.bold,
                  //       fontFamily: 'Rubik'),
                  // )
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Card(
                elevation: 6,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: height * 0.18,
                  width: width * 0.8,
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Column(
                    children: [
                      const Text(
                        'Enter Amount',
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: 'Rubik', color: grey),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          controller: amount,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Rubik-Medium',
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 4,
              ),
              InkWell(
                onTap: () {
                  if (amount.text.length == 0) {
                    return;
                  }
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => CompleteTransferMessage(
                        text1: "Amount Sent",
                        text2: amount.text,
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
              const Spacer(
                flex: 4,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
