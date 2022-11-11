import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/provider/transaction_provider.dart';

class TransactionKeypad extends StatefulWidget {
  const TransactionKeypad({super.key});

  @override
  State<TransactionKeypad> createState() => _TransactionKeypadState();
}

class _TransactionKeypadState extends State<TransactionKeypad> {
  List<String> keypadNumbers = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
    'Delete',
  ];

  var transactionAmount = '';
  @override
  Widget build(BuildContext context) {
    return Consumer<TransactionProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.only(top: 12, left: 8),
              child: transactionAmount.isEmpty
                  ? Text(
                      'Amount',
                      style: GoogleFonts.poppins(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 16,
                      ),
                    )
                  : Text(
                      transactionAmount,
                      style: GoogleFonts.poppins(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 16,
                      ),
                    ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                child: GridView.builder(
                  itemCount: keypadNumbers.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 7,
                    childAspectRatio: 4 / 3,
                  ),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: keypadNumbers[index] != 'Delete'
                          ? GestureDetector(
                              onTap: () => setState(() {
                                transactionAmount += keypadNumbers[index];
                                provider.transactionAmount =
                                    int.parse(transactionAmount);
                              }),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.1),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.2),
                                        spreadRadius: 5,
                                      ),
                                    ]),
                                child: Center(
                                  child: Text(
                                    keypadNumbers[index],
                                    style: GoogleFonts.poppins(
                                      color:
                                          Theme.of(context).primaryColorLight,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () => setState(() {
                                transactionAmount = transactionAmount.substring(
                                    0, transactionAmount.length - 1);
                              }),
                              onLongPress: () => setState(() {
                                transactionAmount = '';
                                provider.transactionAmount = null;
                              }),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.red[600],
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.2),
                                      spreadRadius: 5,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    keypadNumbers[index],
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
