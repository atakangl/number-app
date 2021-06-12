import 'package:flutter/material.dart';
import 'package:flutter_numbers/widgets/build_page.dart';

class BigCard extends StatelessWidget {
  const BigCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 10,
      child: Container(
          height: MediaQuery.of(context).size.width * 0.8,
          width: MediaQuery.of(context).size.width - 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: RadialGradient(
                // evet burası aynı olamadı :(
                colors: [
                  Colors.yellowAccent,
                  Colors.cyan,
                  Colors.pink.shade200
                ],
                center: Alignment(0.9, -0.4),
                radius: 1.3,
                tileMode: TileMode.mirror,
              )),
          child: BuildPage()),
    );
  }
}
