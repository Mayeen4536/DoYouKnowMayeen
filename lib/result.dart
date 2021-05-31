import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    return 'Your Score is ${resultScore}';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 39, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: resetHandler, child: Text('Restart quiz!'),
          textColor: Colors.green,),
        
        
          Text(
            'Take a ScreenShot and show it to Mayeen', 
          style: TextStyle(fontSize: 30, color: Colors.blueAccent),
          )
        ],
          
        
      ),
    );
  }
}
