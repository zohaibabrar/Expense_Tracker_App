// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:transaction_app/components/AddTransactionScreen/transaction_time.dart';

class TransactionModel {
  String transactionTitle;
  String transactionDescription;
  int transactionAmount;
  DateTime transactionDate;

  bool income;

  String get getTitle => transactionTitle;
  String get getDetail => transactionDescription;
  int get getAmount => transactionAmount;
  DateTime get getDate => transactionDate;

  bool get getIncome => income;

  TransactionModel({
    required this.transactionTitle,
    required this.transactionDescription,
    required this.transactionAmount,
    required this.transactionDate,
    required this.income,
  });
}
