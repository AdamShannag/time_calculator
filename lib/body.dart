import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String userInput = '';
  final textController = TextEditingController();
  String history = 'Please Enter year';

  var year_history = {
    '1999': 'Test Iam 1999',
    '1989': 'This is 1989 test test',
  };

  void getHistoryFromYear() {
    setState(() {
      userInput = textController.text;
      if (year_history[userInput] != null) {
        history = year_history[userInput]!;
      } else {
        history = "No such year is found in the DB";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            controller: textController,
          ),
          ElevatedButton(
            onPressed: getHistoryFromYear,
            child: Text('Press me'),
          ),
          Text(
            history,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
