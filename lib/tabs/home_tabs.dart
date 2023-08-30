import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Home_tab extends StatefulWidget {
  const Home_tab({super.key});

  @override
  State<Home_tab> createState() => _Home_tabState();
}

class _Home_tabState extends State<Home_tab> {
  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 30,
                  child: Image.asset(
                    'images/serach.png',
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'looking  for softplay',
                ),
              )),
            ],
          ),
        ),
      ),
      
    );
  }
}
