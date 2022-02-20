import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/screens/transaction_history/components/all_transactions.dart';
import 'package:the_empire/screens/transaction_history/components/received_transactions.dart';
import 'package:the_empire/screens/transaction_history/components/sent_transactions.dart';

class TransactionHistoryScreen extends StatefulWidget {
  final navigatorKey;
   TransactionHistoryScreen({this.navigatorKey, Key? key}) : super(key: key);

  @override
  _TransactionHistoryScreenState createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Navigator(
        key: widget.navigatorKey,
        
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (BuildContext context) {return Column(
      children: [
        CustomAppbar(
          title: 'Transaction History',
        ),
        Expanded(
          child: DefaultTabController(
              length: 3,
              child: Scaffold(
                backgroundColor: backgroundColor,
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: backgroundColor,
                    bottom: TabBar(
                        labelColor: darkpurple,
                        labelPadding: EdgeInsets.only(
                            left: width * 0.02, right: width * 0.02),
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: true,
                        unselectedLabelColor: purple,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        tabs: [
                          Tab(
                            height: height * 0.05,
                            child: Container(
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "All",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontFamily: 'Rubik-Regular'),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            height: height * 0.05,
                            child: Container(
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      Container(
                                        height: height * 0.04,
                                        width: width * 0.08,
                                        decoration: const BoxDecoration(
                                          color: lightGreen,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.arrow_upward,
                                          color: sendColor,
                                        ),
                                      ),
                                      const Spacer(
                                        flex: 2,
                                      ),
                                      Text(
                                        "Sent",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontFamily: 'Rubik-Regular'),
                                      ),
                                      const Spacer(
                                        flex: 6,
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: height * 0.05,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Container(
                                      height: height * 0.04,
                                      width: width * 0.08,
                                      decoration: const BoxDecoration(
                                        color: lightOrange,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.arrow_downward,
                                        color: receivedColor,
                                      ),
                                    ),
                                    const Spacer(
                                      flex: 2,
                                    ),
                                    Text(
                                      "Received",
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Rubik-Regular'),
                                    ),
                                    const Spacer(
                                      flex: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                body: TabBarView(children: [
                  AllTransactions(),
                  SentTransactions(),
                  ReceivedTransactions(),
                ]),
              )),
        )
      ],
    );},);},);
  }
}
