import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../provider/transaction_provider.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<TransactionProvider>(
        builder: (context, provider, child) {
          // ignore: unnecessary_null_comparison
          return provider.transactions.isEmpty
              ? Center(
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    child: Text(
                      'No Transactions Yet!',
                      style: GoogleFonts.abel(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: provider.transactions.length,
                  itemBuilder: (context, index) {
                    // ignore: unnecessary_null_comparison
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .primaryColorLight
                              .withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColor,
                              blurRadius: 5,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Arrow
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Center(
                                child: provider.transactions[index].income
                                    ? const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.green,
                                        size: 30,
                                      )
                                    : const Icon(
                                        Icons.arrow_back,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                              ),
                            ),

                            // Details
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    provider
                                        .transactions[index].transactionTitle,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white70,
                                    ),
                                  ),
                                  Text(
                                    provider
                                        .transactions[index].transactionDetail,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                  Text(
                                    '${provider.transactions[index].transactionDate.day} ${provider.transactions[index].transactionDate.month} , ${provider.transactions[index].transactionDate.year} at ${DateFormat.jm().format(provider.transactions[index].transactionDate)}',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Amount
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  provider.transactions[index].transactionAmount
                                      .toString(),
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
