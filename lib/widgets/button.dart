import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final List<Color> colors;
  const Button({Key? key, required this.text, required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 3,
      child: Container(
        height: 40,
        width: (MediaQuery.of(context).size.width - 55) / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: colors,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
