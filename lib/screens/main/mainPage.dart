import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/screens/Dashboard/dashboard_screen.dart';
import 'package:the_empire/screens/money_transfer/money_transfer_screen.dart';
import 'package:the_empire/screens/payment_method_screen.dart';
import 'package:the_empire/screens/transaction_history/transaction_history_screen.dart';

class MainPage extends StatefulWidget {
  int? initialRout;

  MainPage({this.initialRout});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MainPage>
    with TickerProviderStateMixin<MainPage> {
  late TabController bottomTabController;

  late List<Widget> _pages;

  late int _selectedPage;

  @override
  void initState() {
    super.initState();
    widget.initialRout == 1 ? _selectedPage = 1 : _selectedPage = 0;

    bottomTabController = TabController(length: 4,initialIndex: widget.initialRout ?? 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    print(_selectedPage);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: WillPopScope(
        onWillPop: () async {
          return !await Navigator.maybePop(
            MyKeys.getKeys()[_selectedPage].currentState!.context,
          );
        },
        child: IndexedStack(
          index: _selectedPage,
          children: [
            DashboardScreen(
              navigatorKey: MyKeys.getKeys().elementAt(0),
            ),
            MoneyTransferScreen(
              navigatorKey: MyKeys.getKeys().elementAt(1),
            ),
            PaymentMethodScreen(
              navigatorKey: MyKeys.getKeys().elementAt(2),
            ),
            TransactionHistoryScreen(
              navigatorKey: MyKeys.getKeys().elementAt(3),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: brown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: screenHeight * 0.08,
              child: FittedBox(
                child: IconButton(
                  color: bottomTabController.index == 0
                      ? Colors.white
                      : Colors.white70,
                  iconSize: 25.sp,
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    setState(() {
                      bottomTabController.index = 0;
                      _selectedPage = bottomTabController.index;
                    });

                    bottomTabController.animateTo(0);
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 3.sp),
              height: screenHeight * 0.08,
              child: FittedBox(
                child: IconButton(
                  color: bottomTabController.index == 1
                      ? Colors.white
                      : Colors.white70,
                  iconSize: 25.sp,
                  icon: Icon(Icons.sync_alt),
                  onPressed: () {
                    setState(() {
                      bottomTabController.index = 1;
                      _selectedPage = bottomTabController.index;
                    });
                    bottomTabController.animateTo(1);
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 3.sp),
              height: screenHeight * 0.08,
              child: FittedBox(
                child: IconButton(
                  // color: bottomTabController.index == 2
                  //     ? Colors.white
                  //     : Colors.white70,
                  iconSize: 25.sp,
                  icon: bottomTabController.index == 2
                      ? Image.asset('assets/active_card_icon.png')
                      : Image.asset('assets/disable_card_icon.png'),
                  onPressed: () {
                    setState(() {
                      bottomTabController.index = 2;
                      _selectedPage = bottomTabController.index;
                    });
                    bottomTabController.animateTo(2);
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 3.sp),
              height: screenHeight * 0.08,
              child: FittedBox(
                child: IconButton(
                  color: bottomTabController.index == 3
                      ? Colors.white
                      : Colors.white70,
                  iconSize: 25.sp,
                  icon: const Icon(Icons.history),
                  onPressed: () {
                    setState(() {
                      bottomTabController.index = 3;
                      _selectedPage = bottomTabController.index;
                    });
                    bottomTabController.animateTo(3);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyKeys {
  static final first = GlobalKey(debugLabel: 'page1');
  static final second = GlobalKey(debugLabel: 'page2');
  static final third = GlobalKey(debugLabel: 'page3');
  static final fourth = GlobalKey(debugLabel: 'page4');

  static List<GlobalKey> getKeys() => [first, second, third, fourth];
}


