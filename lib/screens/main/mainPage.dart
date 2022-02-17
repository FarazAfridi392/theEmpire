import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/screens/Dashboard/dashboard_screen.dart';
import 'package:the_empire/screens/Main/components/custom_bottomBar.dart';
import 'package:the_empire/screens/money_transfer/money_transfer_screen.dart';
import 'package:the_empire/screens/payment_method_screen.dart';
import 'package:the_empire/screens/transaction_history/transaction_history_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<MainPage>
    with TickerProviderStateMixin<MainPage> {
  late TabController bottomTabController;

  @override
  void initState() {
    super.initState();

    bottomTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      bottomNavigationBar: CustomBottomBar(
        controller: bottomTabController,
      ),
      // body: PageView(
      //   physics: NeverScrollableScrollPhysics(),
      //   controller: _myPage,
      //   children: <Widget>[
      //     Center(
      //       child: Text("Another Page"),
      //     ),
      //     Center(
      //         child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Text("Page 1"),
      //         RaisedButton(
      //           onPressed: () {
      //             _myPage.jumpToPage(0);
      //             setState(() {
      //               selectedPage = 0;
      //             });
      //           },
      //           child: Text("Go to another page"),
      //         )
      //       ],
      //     )),
      //     Center(child: Text("Page 2")),
      //     Center(child: Text("Page 3")),
      //   ],
      // ),
      body: TabBarView(
        controller: bottomTabController,
        children: [
          DashboardScreen(),
          MoneyTransferScreen(),
          PaymentMethodScreen(),
          TransactionHistoryScreen(),
        ],
      ),
    );
  }
}
