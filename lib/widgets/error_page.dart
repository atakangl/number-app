import 'package:flutter/material.dart';
import 'package:flutter_numbers/bloc/number_bloc.dart';

class ErrorPage extends StatelessWidget {
  final NumberErrorState state;
  const ErrorPage({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        state.error,
        style: TextStyle(
            color: Colors.purple.shade700,
            fontSize: 25,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
