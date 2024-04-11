import 'package:day6_clockbase/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //logo
          Image.asset(
            "assets/images/bg.jpg",
            // fit: BoxFit.scaleDown,
            height: 450,
            // width: 450,
          ),
          //title
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "let's find\nelegant watch that suits you",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),
          ),
          const SizedBox(height: 10),
          //start button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff256FDE),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(25.0),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
