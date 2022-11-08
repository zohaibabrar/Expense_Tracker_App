import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionTitle extends StatelessWidget {
  const TransactionTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        maxLength: 30,
        decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: GoogleFonts.poppins(),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
