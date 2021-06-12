import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_numbers/bloc/number_bloc.dart';
import 'package:flutter_numbers/widgets/button.dart';

class SearchButton extends StatelessWidget {
  final TextEditingController myController;
  const SearchButton({Key? key, required this.myController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<NumberBloc>(context)
            .add(FetchNumberInfoEvent(textEditingController: myController));
      },
      child: Button(
        text: "Search",
        colors: [Colors.cyan.shade300, Colors.yellow.shade300],
      ),
    );
  }
}
