import 'package:flutter/material.dart';

enum TabItem { dashboard, moneyTransfer, paymentMethod,transactionHistory }

const Map<TabItem, String> tabName = {
  TabItem.dashboard: 'dashboard',
  TabItem.moneyTransfer: 'moneyTransfer',
  TabItem.paymentMethod: 'paymentMethod',
  TabItem.transactionHistory: 'transactionHistory',
};