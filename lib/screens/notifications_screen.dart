import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/custom_appbar.dart';
import 'package:the_empire/models/transaction.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Transaction> transactionList = [
    Transaction(
      name: 'George Wilkerson',
      amount: 230,
      time: DateTime.now(),
      isReceiver: true,
      isRequested: false,
    ),
    Transaction(
      name: 'Emanuel Mitchell',
      amount: 240,
      time: DateTime.utc(1989, 2, 15),
      isReceiver: true,
      isRequested: true,
    ),
    Transaction(
      name: 'Kimberly Evans',
      amount: 340,
      time: DateTime.utc(1989, 2, 12, 12, 44),
      isReceiver: false,
      isRequested: false,
    ),
    Transaction(
      name: 'Mario Stewart',
      amount: 590,
      time: DateTime.utc(1989, 2, 10, 3, 33),
      isReceiver: false,
      isRequested: false,
    ),
    Transaction(
      name: 'Mario Stewart',
      amount: 690,
      time: DateTime.utc(1989, 2, 5, 3, 55),
      isReceiver: true,
      isRequested: true,
    ),
    Transaction(
      name: 'Mario Stewart',
      amount: 560,
      time: DateTime.utc(1989, 1, 28),
      isReceiver: true,
      isRequested: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final f2 = DateFormat('MMM d');
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(
            title: 'Notifications',
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.08,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        f2.format(DateTime.now()) ==
                                f2.format(transactionList[i].time!)
                            ? 'Today'
                            : f2.format(transactionList[i].time!),
                        style: TextStyle(
                          color: brown,
                          fontSize: 10.sp,
                          fontFamily: 'Rubik',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 4),
                        leading: const CircleAvatar(
                          child: Icon(
                            Icons.person,
                            color: backgroundColor,
                          ),
                          backgroundColor: brown,
                        ),
                        title: transactionList[i].isRequested == true
                            ? Text.rich(
                                TextSpan(
                                  text: transactionList[i].name,
                                  children: [
                                    TextSpan(
                                      text: "  requested",
                                      style: TextStyle(
                                        color: darkGrey,
                                        fontSize: 10.sp,
                                        fontFamily: 'Rubik',
                                      ),
                                    ),
                                  ],
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Rubik',
                                ),
                              )
                            : transactionList[i].isReceiver == true
                                ? Text(
                                    'You received payment of \$' +
                                        transactionList[i]
                                            .amount!
                                            .toStringAsFixed(0) +
                                        ' from',
                                    style: TextStyle(
                                      color: darkGrey,
                                      fontSize: 10.sp,
                                      fontFamily: 'Rubik',
                                    ),
                                  )
                                : Text(
                                    'You sent payment of \$' +
                                        transactionList[i]
                                            .amount!
                                            .toStringAsFixed(0) +
                                        ' to',
                                    style: TextStyle(
                                      color: darkGrey,
                                      fontSize: 10.sp,
                                      fontFamily: 'Rubik',
                                    ),
                                  ),
                        subtitle: transactionList[i].isRequested == true
                            ? Text(
                                'payment of \$' +
                                    transactionList[i]
                                        .amount!
                                        .toStringAsFixed(0),
                                style: TextStyle(
                                  color: darkGrey,
                                  fontSize: 10.sp,
                                  fontFamily: 'Rubik',
                                ),
                              )
                            : Text(
                                transactionList[i].name!,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Rubik',
                                ),
                              ),
                        trailing: transactionList[i].isRequested == true
                            ? InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (_) => AddCashScreen(),
                                  //   ),
                                  // );
                                },
                                child: Container(
                                  width: width * 0.15,
                                  height: height * 0.04,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: brown),
                                  child: Center(
                                    child: Text(
                                      'Pay',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontFamily: 'Rubik',
                                        color: backgroundColor,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                );
              },
              itemCount: transactionList.length,
            ),
          )
        ],
      ),
    );
  }
}
