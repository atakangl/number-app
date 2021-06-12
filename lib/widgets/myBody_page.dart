import 'package:flutter/material.dart';
import 'package:flutter_numbers/widgets/big_cardd.dart';
import 'package:flutter_numbers/widgets/random_button.dart';
import 'package:flutter_numbers/widgets/search_button.dart';
import 'package:flutter_numbers/widgets/input_card.dart';
import 'package:flutter_numbers/widgets/title.dart';

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController myController = TextEditingController();

    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitlePage(),
              BigCard(),
              InputCard(myController: myController),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SearchButton(myController: myController),
                  RandomButton(myController: myController),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
