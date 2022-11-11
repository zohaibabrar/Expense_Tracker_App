import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/provider/transaction_provider.dart';

class TransactionDescription extends StatelessWidget {
  const TransactionDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController transactionDescriptionController =
        TextEditingController();
    return Consumer<TransactionProvider>(
      builder: (context, provider, child) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            maxLength: 100,
            maxLines: 5,
            controller: transactionDescriptionController,
            onChanged: (value) {
              provider.transactionDescription =
                  transactionDescriptionController.toString();
            },
            decoration: InputDecoration(
              hintText: 'Description',
              hintStyle: GoogleFonts.poppins(),
              border: InputBorder.none,
            ),
          ),
        );
      },
    );
  }
}
