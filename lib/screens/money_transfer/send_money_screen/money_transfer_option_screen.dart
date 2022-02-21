import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/money_transfer/send_money_screen/bank_option_screen.dart';
import 'package:the_empire/screens/money_transfer/send_money_screen/card_option_screen.dart';

class MoneyTransferOption extends StatelessWidget {
  const MoneyTransferOption({Key? key}) : super(key: key);

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
              const Spacer(flex: 5,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => CardOptionScreen()));
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
                        Image.asset('assets/card_icon.png', width: width * 0.1),
                        SizedBox(width: width*0.08,),
                        Text(
                          'Card Transfer',
                          style: TextStyle(
                              color: lightBlack,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rubik'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 2,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => BankOptionScreen()));
                },
                child: Card(
                  elevation: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 30),
                    height: height * 0.1,
                    width: width * 0.8,
                    child: Row(
                      children: [
                        Icon(Icons.account_balance,color: brown,size: 26.sp,),
                        SizedBox(width: width*0.08,),
                        Text(
                          'Bank Transfer',
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
              const Spacer(flex: 5,),
              InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (_) => MoneyTransferOption()));
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
                    const Spacer(flex: 4,),

            ],
          ))
        ],
      ),
    );
  }
}
