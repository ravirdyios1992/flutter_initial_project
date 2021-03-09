import 'package:flutter/material.dart';

class Resutls extends StatelessWidget {
  final int resultValue;
  final Function resetHandular;
  //List<String> selectedAnswers;

  Resutls(this.resultValue, this.resetHandular);

  String get resultPhrase {
    String resultText;
    if (resultValue <= 8) {
      resultText = 'it\'s less then 8';
    } else if (resultValue <= 16) {
      resultText = 'it\'s less then 16';
    } else if (resultValue <= 25) {
      resultText = 'it\'s less then 25';
    } else {
      resultText = 'not exist in the list';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //It can denotes the text align will be the (center verticall & center horizontal) in the container
      widthFactor: double.infinity,
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
              onPressed: resetHandular,
              child: Text('Reset Quiz'),
              style: OutlinedButton.styleFrom(primary: Colors.yellow)),
          /*ElevatedButton(
            onPressed: resetHandular,
            child: Text('Reset Quiz'),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, onPrimary: Colors.white),
          ),*/
        ],
      ),
    );
  }
}
