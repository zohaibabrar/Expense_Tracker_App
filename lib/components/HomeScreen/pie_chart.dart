import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.3,
      color: Colors.white,
      child: const Center(
        child: Text(
          'Graph Part',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
