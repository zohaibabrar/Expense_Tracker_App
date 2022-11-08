// ignore_for_file: public_member_api_docs, sort_constructors_first
class TransactionModel {
  String transactionTitle;
  String transactionDetail;
  int transactionAmount;
  DateTime transactionDate;
  bool income;

  String get getTitle => transactionTitle;
  String get getDetail => transactionDetail;
  int get getAmount => transactionAmount;
  DateTime get getDate => transactionDate;
  bool get getIncome => income;

  TransactionModel({
    required this.transactionTitle,
    required this.transactionDetail,
    required this.transactionAmount,
    required this.transactionDate,
    required this.income,
  });
}
