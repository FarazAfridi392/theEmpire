import 'package:flutter/material.dart';
import 'package:the_empire/app_properties.dart';
import 'package:the_empire/screens/Authentication/forgot_password_screen.dart';
import 'package:the_empire/screens/Authentication/login_screen.dart';
import 'package:the_empire/screens/Authentication/signup_screen.dart';
import 'package:the_empire/screens/Dashboard/dashboard_screen.dart';
import 'package:the_empire/screens/Main/components/custom_bottomBar.dart';
import 'package:the_empire/screens/money_transfer/money_transfer_screen.dart';
import 'package:the_empire/screens/payment_method_screen.dart';
import 'package:the_empire/screens/transaction_history_screen.dart';

class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<Main> with TickerProviderStateMixin<Main>{
  
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