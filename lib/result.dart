import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  // ignore: use_key_in_widget_constructors
  const Result(this._totalScore);
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Image.network(
        'https://upload.wikimedia.org/wikipedia/commons/4/4f/BTS_for_Dispatch_White_Day_Special%2C_27_February_2019_01.jpg',
        height: 200,
        width: 200,
      ),
      Text(
        '    Your Total Score : ' + _totalScore.toString(),
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Image.network(
        'https://www.rollingstone.com/wp-content/uploads/2021/05/R1352_FEA_BTS_A_Openerfull_wm.jpg',
        height: 200,
        width: 200,
      )
    ]);
  }
}
/*Column(children: [
Image.network(
'https://upload.wikimedia.org/wikipedia/commons/4/4f/BTS_for_Dispatch_White_Day_Special%2C_27_February_2019_01.jpg',
height: 300,
width: 300,
),
Text(
'    Your Total Score : ' + _totalScore.toString(),
style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
),
]);*/
