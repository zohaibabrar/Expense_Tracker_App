import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/provider/transaction_provider.dart';

class TransactionType extends StatefulWidget {
  const TransactionType({super.key});

  @override
  State<TransactionType> createState() => _TransactionTypeState();
}

class _TransactionTypeState extends State<TransactionType> {
  List<String> transactionTypes = ['Expense', 'Income'];
  String? transactionSelected = 'Expense';
  bool isIncome = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<TransactionProvider>(
      builder: (context, provider, child) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            value: transactionSelected,
            items: transactionTypes
                .map(
                  (transactionTypes) => DropdownMenuItem<String>(
                    value: transactionTypes,
                    child: Text(
                      transactionTypes,
                      style: GoogleFonts.poppins(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) => setState(
              () {
                transactionSelected = value;
                if (transactionSelected == 'Income') {
                  provider.isIncome = true;
                } else {
                  provider.isIncome = isIncome;
                }
              },
            ),
          ),
        );
      },
    );
  }
}
