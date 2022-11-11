import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/components/AddTransactionScreen/transaction_keypad.dart';
import 'package:transaction_app/components/AddTransactionScreen/transaction_type.dart';
import 'package:transaction_app/provider/transaction_provider.dart';
import 'package:transaction_app/screens/home_screen.dart';

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
      child: Consumer<TransactionProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                provider.addTransaction();
              },
              backgroundColor: Colors.red,
              child: const Icon(
                Icons.check,
                color: Colors.white,
                size: 30,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 8,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    TransactionTitle(),
                    SizedBox(height: 10),
                    TransactionDescription(),
                    SizedBox(height: 10),
                    // Transaction Date
                    TransactionDate(),
                    SizedBox(height: 10),
                    // transaction Time
                    TransactionTime(),
                    SizedBox(height: 10),
                    // transaction type
                    TransactionType(),
                    SizedBox(height: 10),
                    TransactionKeypad(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
