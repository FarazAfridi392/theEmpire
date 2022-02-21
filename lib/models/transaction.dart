class Transaction {
  String? name;
  double? amount;
  DateTime? time;
  bool? isReceiver;
  bool? isRequested;


  Transaction({
    this.name,
    this.amount,
    this.time,
    this.isReceiver,
    this.isRequested,
  });
}
