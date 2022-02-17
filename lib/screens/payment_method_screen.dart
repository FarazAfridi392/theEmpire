import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/money_transfer/components/master_card.dart';
import 'package:the_empire/screens/money_transfer/components/paypal_card.dart';
import 'package:the_empire/screens/money_transfer/components/visa_card.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget updateButton = InkWell(
      onTap: () {
        // Navigator.of(context)
        //     .pushReplacement(MaterialPageRoute(builder: (_) => Main()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: height * 0.07,
        child: const Center(
            child: Text("Update Payment Method",
                style: TextStyle(
                    color: backgroundColor,
                    fontFamily: 'Rubik',
                    fontSize: 18.0))),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          color: brown,
        ),
      ),
    );
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          CustomAppbar(
            title: 'Payment Methods',
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: width * 0.06,
                right: width * 0.12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 6,
                  ),
                  Row(
                    children: [
                      VisaCard(height: height, width: width),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Visa: 4321",
                            style: TextStyle(
                                color: lightBlack,
                                fontFamily: 'Rubik-Regular',
                                fontSize: 11.sp),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            "Exp. Date: 12/25",
                            style: TextStyle(
                                color: lightBlack,
                                fontFamily: 'Rubik-Regular',
                                fontSize: 11.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Divider(
                    color: darkGrey,
                    thickness: 1.5,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      MasterCard(height: height, width: width),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mastercard: 5432",
                            style: TextStyle(
                                color: lightBlack,
                                fontFamily: 'Rubik-Regular',
                                fontSize: 11.sp),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            "Exp. Date: 12/25",
                            style: TextStyle(
                                color: lightBlack,
                                fontFamily: 'Rubik-Regular',
                                fontSize: 11.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Divider(
                    color: darkGrey,
                    thickness: 1.5,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      PaypalCard(height: height, width: width),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PayPal ID",
                            style: TextStyle(
                                color: lightBlack,
                                fontFamily: 'Rubik-Regular',
                                fontSize: 11.sp),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            'Abcd@gmail.com',
                            style: TextStyle(
                                color: lightBlack,
                                fontFamily: 'Rubik-Regular',
                                fontSize: 11.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(flex:3),
                  Center(child: updateButton),
                  
                  const Spacer(
                    flex: 6,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
