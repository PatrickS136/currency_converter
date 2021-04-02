import 'package:flutter/material.dart';
import 'currencyDropdown.dart';

class ConverterCard extends StatelessWidget {
  final String amount;
  final String type;
  final String selected;
  final Function callback;
  ConverterCard(
      {@required this.amount,
      @required this.type,
      @required this.selected,
      @required this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red,
            Colors.blue,
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Center(
        child: Column(
          children: [
            Text(
              type,
            ),
            Row(
              children: [
                Text(amount),
                SizedBox(
                  width: 40,
                ),
                CurrencyDropdown(selectedCurrency: selected, callback: callback)
              ],
            )
          ],
        ),
      ),
    );
  }
}
