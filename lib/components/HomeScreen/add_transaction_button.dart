import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/screens/add_transaction_screen.dart';

import '../../provider/transaction_provider.dart';

class AddTransactionButton extends StatelessWidget {
  const AddTransactionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TransactionProvider>(
      builder: (context, provider, child) {
        return GestureDetector(
          onTap: () {
            provider.addTransaction();
          },
          child: Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: MediaQuery.of(context).size.width * 0.75,
            ),
            child: Container(
              width: 90,
              height: 35,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: Theme.of(context).primaryColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Colors.white70,
                    ),
                    Text(
                      'Add',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
