import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hey",
        style: TextStyle(
            color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
