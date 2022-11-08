import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphLabel extends StatelessWidget {
  const GraphLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
          top: MediaQuery.of(context).size.height * 0.02,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Expense label
            Row(
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red[500],
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Expense',
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            // Income Label
            Row(
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green[500],
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Income',
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            // Savings Label
            Row(
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[500],
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Savings',
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
