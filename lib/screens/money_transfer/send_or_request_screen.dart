import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/money_transfer/request_money_screens/request_money_screen.dart';
import 'package:the_empire/screens/money_transfer/send_money_screen/money_transfer_option_screen.dart';

class SendOrRequestScreen extends StatelessWidget {
  const SendOrRequestScreen({Key? key}) : super(key: key);

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
                flex: 2,
              ),
              Image.asset(
                'assets/dec.png',
                width: width * 0.6,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                'Easy Money Transfer',
                
                style: TextStyle(
                    color: lightBlack,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik'),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*0.2),
                child: Text(
                  'Now you can send and receive Money from anywhere through The Empire.',
                  textAlign: TextAlign.center,
                    maxLines: 3,
                  style: TextStyle(
                      color: darkGrey,
                      fontSize: 12.sp,
                      fontFamily: 'Rubik-Regular'),
                ),
              ),
              const Spacer(flex: 3,),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => MoneyTransferOption()));
                },
                child: Card(
                  elevation: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 25),
                    height: height * 0.1,
                    width: width * 0.8,
                    child: Row(
                      children: [
                        Image.asset('assets/send_money.png',
                            width: width * 0.1),
                        SizedBox(
                          width: width * 0.08,
                        ),
                        Text(
                          'Send Money',
                          style: TextStyle(
                              color: lightBlack,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rubik'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => RequestMoneyScreen()));
                },
                child: Card(
                  elevation: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 25),
                    height: height * 0.1,
                    width: width * 0.8,
                    child: Row(
                      children: [
                        Image.asset('assets/request_money.png',
                            width: width * 0.1),
                        SizedBox(
                          width: width * 0.08,
                        ),
                        Text(
                          'Request Money',
                          style: TextStyle(
                              color: lightBlack,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rubik'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 5,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
