import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(child: DicePage()),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  State<DicePage> createState() => _State();
}

class _State extends State<DicePage> {
  int num = 1;
  int num2 = 1;
  void change() {
    num = Random().nextInt(5) + 2;
    num2 = Random().nextInt(5) + 2;
  }

  @override
  Widget build(BuildContext context) {
    // var flatButton = FlatButton;
    return Row(children: <Widget>[
      Expanded(
        // flex: 1, default it is 1

        child: TextButton(
          onPressed: () {
            setState(() {
              change();
            });
          },
          child: Image(
            image: AssetImage('images/dice$num.png'),
          ),
        ),
      ),
      Expanded(
        // flex: 1, default it is 1

        child: TextButton(
          onPressed: () {
            setState(() {
              change();
            });
          },
          child: Image(
            image: AssetImage('images/dice$num2.png'),
            // color: Colors.red,
          ),
        ),
      ),
    ]);
  }
}
