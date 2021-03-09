import 'package:flutter/material.dart';

class ButtonRendering extends StatelessWidget {
  final Function functionHandular;
  final String buttonTitle;
  ButtonRendering(this.functionHandular, this.buttonTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text(buttonTitle),
          color: Colors.white,
          splashColor: Colors.blue,
          onPressed: functionHandular),
    );
  }
}
