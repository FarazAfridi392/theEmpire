import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/screens/Dashboard/dashboard_screen.dart';
import 'package:the_empire/screens/Main/components/custom_bottomBar.dart';
import 'package:the_empire/screens/money_transfer/money_transfer_screen.dart';
import 'package:the_empire/screens/payment_method_screen.dart';
import 'package:the_empire/screens/transaction_history/transaction_history_screen.dart';

class MainPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MainPage>
    with TickerProviderStateMixin<MainPage> {
  late TabController bottomTabController;

  late List<Widget> _pages;

  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.messenger_rounded),
      label: "Messages",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Settings",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Settings",
    ),
  ];

  late int _selectedPage;

  @override
  void initState() {
    super.initState();
    bottomTabController = TabController(length: 4, vsync: this);
    _selectedPage = 0;

    // _pages = [
    //   DashboardScreen(navigatorKey: MyKeys.getKeys().elementAt(0)),
    //   MoneyTransferScreen(),
    //   PaymentMethodScreen(),
    //   TransactionHistoryScreen(),
    // ];
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          return !await Navigator.maybePop(
            MyKeys.getKeys()[_selectedPage].currentState!.context,
          );
        },
        child: IndexedStack(
          index: _selectedPage,
          children: [
            TabBarView(
              controller: bottomTabController,
              children: [
                DashboardScreen(navigatorKey: MyKeys.getKeys().elementAt(0)),
                MoneyTransferScreen(),
                PaymentMethodScreen(),
                TransactionHistoryScreen(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        
        controller: bottomTabController,
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage(this.count, this.text, this.navigatorKey);
  final count;
  final text;
  final navigatorKey;
  @override
  Widget build(BuildContext context) {
    // You'll see that it will only print once
    print("Building $text with count: $count");
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text(this.text),
              ),
              body: Center(
                child: RaisedButton(
                  child: Text(this.count.toString()),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => MyCustomPage(count + 1, text)));
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class MyCustomPage extends StatelessWidget {
  MyCustomPage(this.count, this.text);
  final count;
  final text;
  @override
  Widget build(BuildContext parentContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.text),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    child: Card(
                      child: Center(
                        child: RaisedButton(
                          child: Text(this.count.toString() + " pos($index)"),
                          onPressed: () {
                            Navigator.of(parentContext).push(MaterialPageRoute(
                                builder: (ctx) =>
                                    MyCustomPage(count + 1, text)));
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyKeys {
  static final first = GlobalKey(debugLabel: 'page1');
  static final second = GlobalKey(debugLabel: 'page2');
  static final third = GlobalKey(debugLabel: 'page3');

  static List<GlobalKey> getKeys() => [first, second, third];
}

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   _DashboardScreenState createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<MainPage>
//     with TickerProviderStateMixin<MainPage> {
//   late TabController bottomTabController;

//   @override
//   void initState() {
//     super.initState();

    // bottomTabController = TabController(length: 4, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,

//       bottomNavigationBar: CustomBottomBar(
//         controller: bottomTabController,
//       ),
//       // body: PageView(
//       //   physics: NeverScrollableScrollPhysics(),
//       //   controller: _myPage,
//       //   children: <Widget>[
//       //     Center(
//       //       child: Text("Another Page"),
//       //     ),
//       //     Center(
//       //         child: Column(
//       //       mainAxisAlignment: MainAxisAlignment.center,
//       //       children: <Widget>[
//       //         Text("Page 1"),
//       //         RaisedButton(
//       //           onPressed: () {
//       //             _myPage.jumpToPage(0);
//       //             setState(() {
//       //               selectedPage = 0;
//       //             });
//       //           },
//       //           child: Text("Go to another page"),
//       //         )
//       //       ],
//       //     )),
//       //     Center(child: Text("Page 2")),
//       //     Center(child: Text("Page 3")),
//       //   ],
//       // ),
      // body: TabBarView(
      //   controller: bottomTabController,
      //   children: [
      //     DashboardScreen(),
      //     MoneyTransferScreen(),
      //     PaymentMethodScreen(),
      //     TransactionHistoryScreen(),
      //   ],
      // ),
//     );
//   }
// }
