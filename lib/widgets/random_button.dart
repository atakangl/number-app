import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_numbers/bloc/number_bloc.dart';
import 'package:flutter_numbers/widgets/button.dart';

class RandomButton extends StatelessWidget {
  final TextEditingController myController;
  const RandomButton({Key? key, required this.myController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<NumberBloc>(context).add(FetchRandomNumberInfoEvent(
          textEditingController: myController,
        ));
      },
      child: Button(
          text: "Random", colors: [Colors.pink.shade200, Colors.cyan.shade300]),
    );
  }
}
