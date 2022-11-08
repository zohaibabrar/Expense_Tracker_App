import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionDescription extends StatelessWidget {
  const TransactionDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        maxLength: 100,
        maxLines: 5,
        decoration: InputDecoration(
          hintText: 'Description',
          hintStyle: GoogleFonts.poppins(),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
