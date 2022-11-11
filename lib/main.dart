import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transaction_app/provider/transaction_provider.dart';
import 'package:transaction_app/screens/add_transaction_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black26,
      ),
      home: ChangeNotifierProvider<TransactionProvider>(
        create: (context) => TransactionProvider(),
        child: const HomeScreen(),
      ),
    );
  }
}
