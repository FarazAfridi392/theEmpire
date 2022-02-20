import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/money_transfer/components/cards_box.dart';
import 'package:the_empire/screens/notifications_screen.dart';

class MoneyTransferScreen extends StatefulWidget {
  final navigatorKey;
  const MoneyTransferScreen({this.navigatorKey, Key? key}) : super(key: key);

  @override
  _MoneyTransferScreenState createState() => _MoneyTransferScreenState();
}

class _MoneyTransferScreenState extends State<MoneyTransferScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Widget proceedButton = InkWell(
    //   onTap: () {
    //     Navigator.of(context)
    //         .push(MaterialPageRoute(builder: (_) => NotificationScreen()));
    //   },
    //   child: Container(
    //     width: MediaQuery.of(context).size.width / 1.5,
    //     height: height * 0.07,
    //     child: const Center(
    //         child: Text("Proceed",
    //             style: TextStyle(
    //                 color: backgroundColor,
    //                 fontFamily: 'Rubik',
    //                 fontSize: 18.0))),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(9.0),
    //       color: brown,
    //     ),
    //   ),
    // );

    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(
              backgroundColor: backgroundColor,
              body: Center(
                child: Column(
                  children: [
                    CustomAppbar(
                      title: 'Money Transfer',
                    ),
                    const Spacer(
                      flex: 5,
                    ),
                    Text('Select a Payment Method',
                        style: TextStyle(
                            color: lightBlack,
                            fontSize: 12.sp,
                            fontFamily: 'Rubik-Bold',
                            fontWeight: FontWeight.bold)),
                    const Spacer(
                      flex: 1,
                    ),
                    const CardsBox(),
                    const Spacer(
                      flex: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => NotificationScreen()));
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
                      flex: 1,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context)
                        //     .pushReplacement(MaterialPageRoute(builder: (_) => Main()));
                      },
                      child: Container(
                        width: width / 1.5,
                        height: height * 0.05,
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "or Scan a QR Code",
                              style: TextStyle(
                                  color: lightBlack,
                                  fontFamily: 'Rubik',
                                  fontSize: 18.0),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(
                              Icons.qr_code_scanner,
                              color: lightBlack,
                            )
                          ],
                        )),
                        decoration: BoxDecoration(
                          border: Border.all(color: borderColor),
                          borderRadius: BorderRadius.circular(9.0),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
