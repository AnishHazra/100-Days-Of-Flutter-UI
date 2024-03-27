import 'dart:async';

import 'package:day6_facebook_clone/facebook_home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const FacebookHomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image(
                  image: AssetImage(
                    "images/logo.png",
                  ),
                  height: 70,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "FACEBOOK",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.grey,
                      size: 18,
                    ),
                    SizedBox(width: 10),
                    FaIcon(
                      FontAwesomeIcons.facebookMessenger,
                      color: Colors.grey,
                      size: 18,
                    ),
                    SizedBox(width: 10),
                    FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.grey,
                      size: 18,
                    ),
                    SizedBox(width: 10),
                    FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
