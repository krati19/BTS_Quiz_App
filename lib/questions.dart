import 'package:flutter/material.dart';
import './result.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final List<String> _questionslist = [
    'Who is the leader of BTS ?',
    'How many member are there in BTS ?',
    'Who said LACHIMOLALA ?',
    'Whose song is BICYCLE ?',
    'Who is the WORLD WIDE HANDSOME of BTS ?'
  ];
  final List<List<Map<String, Object>>> _choices = [
    [
      {'choice': 'RM', 'score': 10},
      {'choice': 'Jimin', 'score': 0},
      {'choice': 'Suga', 'score': 0},
      {'choice': 'Jungkook', 'score': 0}
    ],
    [
      {'choice': '9', 'score': 0},
      {'choice': '6', 'score': 0},
      {'choice': '7', 'score': 10},
      {'choice': '4', 'score': 0}
    ],
    [
      {'choice': 'Jhope', 'score': 0},
      {'choice': 'Jin', 'score': 0},
      {'choice': 'Jimin', 'score': 10},
      {'choice': 'Rm', 'score': 0}
    ],
    [
      {'choice': 'V', 'score': 0},
      {'choice': 'RM', 'score': 10},
      {'choice': 'Jungkook', 'score': 0},
      {'choice': 'Jimin', 'score': 0}
    ],
    [
      {'choice': 'V', 'score': 0},
      {'choice': 'Jungkook', 'score': 0},
      {'choice': 'RM', 'score': 0},
      {'choice': 'Jin', 'score': 10}
    ]
  ];
  int _index = 0;
  int _totalScore = 0;

  void _answered(int score) {
    _totalScore += score;
    setState(() => _index++);
  }

  @override
  Widget build(BuildContext context) {
    return (_index >= 5)
        ? Result(_totalScore)
        : Column(children: [
            Container(
              child: Text(
                _questionslist[_index],
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.w500),
              ),
              width: double.infinity,
              margin: const EdgeInsets.only(
                  top: 50, bottom: 60, left: 15, right: 15),
            ),
            ..._choices[_index]
                .map((aSingleButtonMap) => ElevatedButton(
                    child: Text(aSingleButtonMap['choice'].toString()),
                    onPressed: () => _answered(
                        int.parse(aSingleButtonMap['score'].toString())),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple, //background color of button
                        side: const BorderSide(
                            width: 3,
                            color: Colors.white70), //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.all(30),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))))
                .toList(),
          ]);
  }
}