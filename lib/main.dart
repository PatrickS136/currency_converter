import 'package:flutter/material.dart';
import 'package:currency_converter/screens/converterScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Currency Converter',
      home: Scaffold(
        body: SafeArea(
          child: ConverterScreen(),
        ),
      ),
    );
  }
}
