import 'package:flutter/material.dart';
import 'package:flutter_numbers/bloc/number_bloc.dart';

class LoadedPage extends StatelessWidget {
  final NumberLoadedState state;
  const LoadedPage({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            state.myData.number.toString(),
            style: TextStyle(
                color: Colors.purple,
                fontSize: 25,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            state.myData.text,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
