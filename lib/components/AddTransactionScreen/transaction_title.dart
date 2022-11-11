// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/provider/transaction_provider.dart';

class TransactionTitle extends StatelessWidget {
  const TransactionTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController transctionTitle = TextEditingController();
    return Consumer<TransactionProvider>(
      builder: (context, provider, child) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            maxLength: 30,
            controller: transctionTitle,
            onChanged: (value) {
              provider.transactionTitle = transctionTitle.toString();
            },
            decoration: InputDecoration(
              hintText: 'Title',
              hintStyle: GoogleFonts.poppins(),
              border: InputBorder.none,
            ),
          ),
        );
      },
    );
  }
}
