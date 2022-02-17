import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/models/transaction.dart';

class AllTransactions extends StatelessWidget {
  AllTransactions({Key? key}) : super(key: key);

  List<Transaction> transactionList = [
    Transaction(
      name: 'George Wilkerson',
      amount: 230,
      time: DateTime.now(),
      isReceiver: true,
    ),
    Transaction(
      name: 'Emanuel Mitchell',
      amount: 240,
      time: DateTime.utc(1989, 2, 15),
      isReceiver: false,
    ),
    Transaction(
      name: 'Kimberly Evans',
      amount: 340,
      time: DateTime.utc(1989, 2, 12, 12, 44),
      isReceiver: true,
    ),
    Transaction(
      name: 'Mario Stewart',
      amount: 590,
      time: DateTime.utc(1989, 2, 10, 3, 33),
      isReceiver: true,
    ),
    Transaction(
      name: 'Mario Stewart',
      amount: 690,
      time: DateTime.utc(1989, 2, 5, 3, 55),
      isReceiver: false,
    ),
    Transaction(
      name: 'Mario Stewart',
      amount: 560,
      time: DateTime.utc(1989, 1, 28),
      isReceiver: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final f1 = DateFormat('dd/MM/yy');
    final f2 = DateFormat('MMM d');
    final f = DateFormat('hh:mm a');
    return Padding(
      padding: EdgeInsets.only(top: 15.sp, right: 20.sp, left: 20.sp),
      child: ListView.builder(
        itemBuilder: (context, int) {
          print(DateTime.utc(1989, 11, 9).toString());
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  f1.format(DateTime.now()) ==
                          f1.format(transactionList[int].time!)
                      ? Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik',
                            color: Colors.black,
                          ),
                        )
                      : Text(
                          f2.format(transactionList[int].time!),
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Rubik',
                            color: darkGrey,
                          ),
                        ),
                  Text(
                    transactionList[int].isReceiver == true
                        ? "+ \$" +
                            transactionList[int].amount!.toStringAsFixed(0)
                        : "- \$" +
                            transactionList[int].amount!.toStringAsFixed(0),
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Rubik',
                      color: darkGrey,
                    ),
                  )
                ],
              ),
              SizedBox(height: 8),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: width * 0.1,
                  width: width * 0.1,
                  decoration: BoxDecoration(
                      color: transactionList[int].isReceiver == true
                          ? receivedColor
                          : sendColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: transactionList[int].isReceiver == true
                        ? const Icon(
                            Icons.call_received,
                            color: backgroundColor,
                          )
                        : const Icon(
                            Icons.call_made_outlined,
                            color: backgroundColor,
                          ),
                  ),
                ),
                title: Text(
                  transactionList[int].name!,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontFamily: 'Rubik-Regular',
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  f.format(transactionList[int].time!),
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontFamily: 'Rubik',
                    color: darkGrey,
                  ),
                ),
                trailing: Text(
                  transactionList[int].isReceiver == true
                      ? "+ \$" + transactionList[int].amount!.toStringAsFixed(0)
                      : "- \$" +
                          transactionList[int].amount!.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontFamily: 'Rubik',
                    color: transactionList[int].isReceiver == true
                        ? receivedColor
                        : sendColor,
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: transactionList.length,
      ),
    );
  }
}
