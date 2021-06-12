import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_numbers/bloc/number_bloc.dart';
import 'package:flutter_numbers/widgets/error_page.dart';
import 'package:flutter_numbers/widgets/init_page.dart';
import 'package:flutter_numbers/widgets/loaded_page.dart';

class BuildPage extends StatelessWidget {
  const BuildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NumberBloc, NumberState>(
      builder: (context, NumberState state) {
        if (state is NumberLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is NumberLoadedState) {
          return LoadedPage(
            state: state,
          );
        } else if (state is NumberErrorState) {
          return ErrorPage(
            state: state,
          );
        } else {
          return InitPage();
        }
      },
    );
  }
}
