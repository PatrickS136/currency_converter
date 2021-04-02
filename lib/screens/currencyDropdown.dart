import 'package:flutter/material.dart';
import 'package:currency_converter/currencies.dart';

class CurrencyDropdown extends StatelessWidget {
  final String selectedCurrency;
  final Function callback;
  CurrencyDropdown({@required this.selectedCurrency, @required this.callback});
  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currencies) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: callback,
    );
  }
}
