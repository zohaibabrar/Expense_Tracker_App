import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/AddTransactionScreen/transaction_date.dart';
import '../components/AddTransactionScreen/transaction_description.dart';
import '../components/AddTransactionScreen/transaction_time.dart';
import '../components/AddTransactionScreen/transaction_title.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const TransactionTitle(),
            const SizedBox(height: 10),
            const TransactionDescription(),
            const SizedBox(height: 10),
            const TransactionDate(),
            const SizedBox(height: 10),
            const TransactionTime(),
          ],
        ),
      ),
    );
  }
}
