import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// ignore: camel_case_types
class intro_page_3 extends StatelessWidget {
  const intro_page_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Image.asset('images/logo.png'),
        Container(
          child: Lottie.asset('animations/er.json'),
        ),
      ],
    );
  }
}
