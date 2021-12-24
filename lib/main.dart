import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "text widget example",
    home: Scaffold(
      appBar: AppBar(
        title: Text("text example"),
      ),
      body: myapp(),
    ),
  ));
}

class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  var _svalue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Switch(
            value: _svalue,
            onChanged: (value) {
              setState(() {
                _svalue = value;
              });
              print("$_svalue");
            },
            activeColor: Colors.amber,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
