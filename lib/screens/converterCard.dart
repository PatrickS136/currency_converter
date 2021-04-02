import 'package:flutter/material.dart';
import 'currencyDropdown.dart';

class ConverterCard extends StatelessWidget {
  final String amount;
  final String type;
  final String selected;
  final Function callback;
  final Color color1;
  final Color color2;
  final textStyle;
  ConverterCard({
    @required this.amount,
    @required this.type,
    @required this.selected,
    @required this.callback,
    @required this.color1,
    @required this.color2,
    @required this.textStyle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            color1,
            color2,
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              type,
              style: textStyle,
            ),
            Text(
              amount,
              style: textStyle,
            ),
            CurrencyDropdown(selectedCurrency: selected, callback: callback)
          ],
        ),
      ),
    );
  }
}
