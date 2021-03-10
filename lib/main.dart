import 'package:flutter/material.dart';
import './quiz.dart';
import './results.dart';

//void main() {
//   runApp(BasicsOfFlutterApp());
//}

void main() => runApp(BasicsOfFlutterApp());

class BasicsOfFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BasicsOfFlutterAppState();
  }
}

class BasicsOfFlutterAppState extends State<BasicsOfFlutterApp> {
//Once you declare final in the class level it never change if we try to modify in future.
  final _categoriesArray = const [
    {
      'catName': 'Best colors',
      'options': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Orange', 'score': 40}
      ]
    },
    {
      'catName': 'Best Animal',
      'options': [
        {'text': 'Monkey', 'score': 1},
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 37}
      ]
    },
    {
      'catName': 'Good state in india',
      'options': [
        {'text': 'Andhra Pradesh', 'score': 100},
        {'text': 'Hyderabad', 'score': 020},
        {'text': 'Kerala', 'score': 400}
      ]
    }
  ];

// '_' Here underscore indicates the private property. You can use this property in this file level only.
  int _selecedColorIndex = 0;
  int _totalScore = 0;
  //List<String> _selectedAnswers = [];

  void buttonClick(int score) {
    _totalScore += score;
    setState(() {
      _selecedColorIndex = _selecedColorIndex + 1;
    }); 
  }

  void _resetHandular() {
    setState(() {
      _selecedColorIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext contex) {
//var selectedStrArray = ['Blue', 'Orange', 'Red'];
    //var colorsArray = [Colors.blue, Colors.orange, Colors.red];
    // TODO: implement build
    return Container(
      child: MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        backgroundColor: Colors.orange, //background color of application
        body: Container(
          //alignment: Alignment.center,
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, top: 10),
          child: _selecedColorIndex < _categoriesArray.length
              ? Quiz(
                  answerQuestionFuntion: buttonClick,
                  questions: _categoriesArray,
                  questionIndex: _selecedColorIndex,
                )
              : Resutls(_selecedColorIndex, _resetHandular),
        ),
      )),
    );
  }
}
