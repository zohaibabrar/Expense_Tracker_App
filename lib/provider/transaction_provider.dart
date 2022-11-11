import 'package:flutter/cupertino.dart';
import 'package:transaction_app/model/transaction_model.dart';

class TransactionProvider extends ChangeNotifier {
  List<TransactionModel> transactions = [];
  String? transactionTitle;
  String? transactionDescription;
  DateTime? transactionDate;
  bool? isIncome;
  int? transactionAmount;

  void addTransaction() {
    TransactionModel transactionModel = TransactionModel(
      transactionTitle: 'House Rent',
      transactionDescription: 'House Rent Recieved from Natasha',
      transactionDate: DateTime.now(),
      transactionAmount: 25000,
      income: true,
    );

    transactions.add(transactionModel);
    notifyListeners();
  }
}
