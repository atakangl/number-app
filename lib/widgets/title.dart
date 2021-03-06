import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Number Trivia",
          style: TextStyle(
              color: Colors.purple, fontSize: 30, fontWeight: FontWeight.bold),
        ));
  }
}
