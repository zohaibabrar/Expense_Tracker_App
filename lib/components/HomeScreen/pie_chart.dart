import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class Pie extends StatelessWidget {
  const Pie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, double> transactionData = {
      'Expense': 44.5,
      'Income': 22.2,
      'Saving': 33.3,
    };

    List<Color> labelColorList = const [
      Color.fromARGB(255, 255, 2, 2),
      Color.fromARGB(221, 2, 255, 15),
      Color.fromARGB(255, 88, 88, 88),
    ];
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Center(
        child: PieChart(
          dataMap: transactionData,
          colorList: labelColorList,
          legendOptions: const LegendOptions(showLegends: false),
          animationDuration: const Duration(seconds: 2),
          chartType: ChartType.ring,
          ringStrokeWidth: 15,
          chartValuesOptions: const ChartValuesOptions(showChartValues: false),
        ),
      ),
    );
  }
}
