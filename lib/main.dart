import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_numbers/bloc/number_bloc.dart';
import 'package:flutter_numbers/injectable.dart';
import 'widgets/myBody_page.dart';

main(List<String> args) {
  setuplocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BlocProvider(
          create: (context) => locator<NumberBloc>(),
          child: MyBody(),
        ),
      ),
    );
  }
}
