import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final TextEditingController myController;
  const InputCard({Key? key, required this.myController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width - 50,
          child: TextField(
            controller: myController,
            keyboardType: TextInputType.number,
            cursorColor: Colors.grey,
            decoration: InputDecoration(
                hintText: "Input a number",
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
          ),
        ));
  }
}
