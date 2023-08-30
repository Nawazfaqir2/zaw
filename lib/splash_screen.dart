import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tony_shop/pages/home.dart';
import 'package:tony_shop/intro_page2.dart';
import 'package:tony_shop/intro_screen/intro_page_1.dart';
import 'package:tony_shop/intro_screen/intro_page_3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController _controller = PageController();
  bool onlastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // page view
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onlastpage = (index == 2);
            });
          },
          children: const [
            intro_page_1(),
            intro_page_2(),
            intro_page_3(),
          ],
        ),

        //dot indicator
        Container(
          alignment: const Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
//skip

              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

//doit indicator
              SmoothPageIndicator(controller: _controller, count: 3),
              onlastpage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child: const Text('done'),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const Text('next')),
            ],
          ),
        )
      ],
    ));
  }
}
