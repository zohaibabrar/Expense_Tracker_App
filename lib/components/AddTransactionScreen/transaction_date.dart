import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/provider/transaction_provider.dart';

class TransactionDate extends StatefulWidget {
  const TransactionDate({
    Key? key,
  }) : super(key: key);

  @override
  State<TransactionDate> createState() => _TransactionDateState();
}

class _TransactionDateState extends State<TransactionDate> {
  DateTime? transactionDate;
  @override
  Widget build(BuildContext context) {
    return Consumer<TransactionProvider>(
      builder: (context, provider, child) {
        return Row(
          children: [
            GestureDetector(
              onTap: () => setState(() {
                transactionDate = DateTime.now();
                provider.transactionDate = transactionDate;
              }),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColorLight.withOpacity(0.2),
                ),
                child: const Center(
                  child: Icon(
                    Icons.date_range_outlined,
                    color: Colors.white70,
                    size: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: transactionDate == null
                  ? Text(
                      'Date',
                      style: GoogleFonts.poppins(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 17,
                      ),
                    )
                  : Text(
                      '${transactionDate!.day.toString()} / ${transactionDate!.month.toString()} / ${transactionDate!.year.toString()}',
                      style: GoogleFonts.poppins(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 17,
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }
}
