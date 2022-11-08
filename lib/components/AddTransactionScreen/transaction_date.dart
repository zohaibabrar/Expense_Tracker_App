import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionDate extends StatelessWidget {
  const TransactionDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
        const SizedBox(width: 10),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Date',
              hintStyle: GoogleFonts.poppins(),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
