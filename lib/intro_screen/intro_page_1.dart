import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// ignore: camel_case_types
class intro_page_1 extends StatelessWidget {
  const intro_page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'images/logo.png',
                    ))),

            // child: Center(
            //   child: Image.asset(
            //     'images/lo.gif',
            //     height: 400,
            //   ),
            // ),
          ),
          Lottie.asset('animations/page1.json', height: 200),
          Container(
            margin:
                const EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 0),
            child: const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Welcome to Tony Shop',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
