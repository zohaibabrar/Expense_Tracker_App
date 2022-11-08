import 'package:flutter/cupertino.dart';
import 'package:transaction_app/model/transaction_model.dart';

class TransactionProvider extends ChangeNotifier {
  List<TransactionModel> transactions = [];

  void addTransaction() {
    TransactionModel transactionModel = TransactionModel(
      transactionTitle: 'Salary Deposit',
      transactionDetail: 'Zohaib Deposit',
      transactionAmount: 2000,
      transactionDate: DateTime.now(),
      income: true,
    );

    transactions.add(transactionModel);
    notifyListeners();
  }
}
