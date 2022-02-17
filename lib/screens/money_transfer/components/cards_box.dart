import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/screens/money_transfer/components/master_card.dart';
import 'package:the_empire/screens/money_transfer/components/paypal_card.dart';
import 'package:the_empire/screens/money_transfer/components/visa_card.dart';

class CardsBox extends StatelessWidget {
  const CardsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.35,
      width: width * 0.9,
      child: Card(
        elevation: 6.sp,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.08, vertical: height * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VisaCard(height: height, width: width),
                  MasterCard(height: height, width: width),
                ],
              ),
              PaypalCard(height: height, width: width)
            ],
          ),
        ),
      ),
    );
  }
}
