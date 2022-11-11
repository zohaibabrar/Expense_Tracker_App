import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TransactionTime extends StatefulWidget {
  const TransactionTime({
    Key? key,
  }) : super(key: key);

  @override
  State<TransactionTime> createState() => _TransactionTimeState();
}

class _TransactionTimeState extends State<TransactionTime> {
  DateTime? transactionTime;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => setState(() {
            transactionTime = DateTime.now();
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
                Icons.access_time_rounded,
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
          child: transactionTime == null
              ? Text(
                  'Time',
                  style: GoogleFonts.poppins(
                    color: Theme.of(context).primaryColorLight,
                    fontSize: 17,
                  ),
                )
              : Text(
                  DateFormat.jm().format(transactionTime!),
                  style: GoogleFonts.poppins(
                    color: Theme.of(context).primaryColorLight,
                    fontSize: 17,
                  ),
                ),
        ),
      ],
    );
  }
}
