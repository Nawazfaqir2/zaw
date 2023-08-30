import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// ignore: camel_case_types
class intro_page_2 extends StatelessWidget {
  const intro_page_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              
              Container(
                //height: 600,
                padding: EdgeInsets.only(top: 120, left: 50),
                child: Lottie.asset(
                  'animations/page2.json',
                  height: 400,
                ),
              ),
              Lottie.asset('animations/book2.json', width: 250),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
