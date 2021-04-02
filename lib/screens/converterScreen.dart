import 'package:currency_converter/currencies.dart';
import 'package:currency_converter/screens/converterCard.dart';
import 'package:flutter/material.dart';

class ConverterScreen extends StatefulWidget {
  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  String selectedBaseCurrency = 'AUD';
  String selectedConvertedCurrency = 'IDR';
  String convertedAmount = "Converting...";
  bool converting = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void baseCallback(newValue) {
    setState(() {
      selectedBaseCurrency = newValue;
      getData();
    });
  }

  void convertedCallback(newValue) {
    setState(() {
      selectedConvertedCurrency = newValue;
      getData();
    });
  }

  void getData() async {
    converting = true;
    dynamic conversion = await CurrencyData()
        .convert(selectedBaseCurrency, selectedConvertedCurrency);
    setState(() {
      convertedAmount = conversion;
    });
    converting = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ConverterCard(
              amount: "1",
              type: "Base",
              selected: selectedBaseCurrency,
              callback: baseCallback),
        ),
        Expanded(
          child: ConverterCard(
              amount: (converting == true) ? "Converting..." : convertedAmount,
              type: "Converted to",
              selected: selectedConvertedCurrency,
              callback: convertedCallback),
        ),
      ],
    );
  }
}
