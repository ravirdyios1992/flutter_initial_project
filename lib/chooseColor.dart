import 'package:flutter/material.dart';

class ChooseColor extends StatelessWidget {
   String choosenColorText;

  ChooseColor(this.choosenColorText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        choosenColorText,
        style: TextStyle(fontSize: 30.0, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
