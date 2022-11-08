import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/provider/transaction_provider.dart';
import '../components/HomeScreen/add_transaction_button.dart';
import '../components/HomeScreen/graph_label.dart';
import '../components/HomeScreen/pie_chart.dart';

import '../components/HomeScreen/transaction_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<TransactionProvider>(
          builder: (context, provider, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Add Button
                const AddTransactionButton(),

                // graph + label
                Row(
                  children: const [
                    // graph
                    PieChart(),

                    // labels
                    GraphLabel(),
                  ],
                ),
                const TransactionList(),
              ],
            );
          },
        ),
      ),
    );
  }
}
