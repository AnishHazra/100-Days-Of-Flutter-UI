import 'package:flutter/material.dart';
import 'package:space_app/components/bottom_navbar.dart';
import 'package:space_app/model/planet.dart';

class SolarSystemPage extends StatelessWidget {
  const SolarSystemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            "assets/images/SOLAR SYSTEM.png",
            height: 22,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 30),
            icon: Image.asset(
              "assets/images/search.png",
              height: 25,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          padding: const EdgeInsets.only(left: 30),
          onPressed: () {},
          icon: Image.asset(
            "assets/images/Menu.png",
            height: 25,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          //! Background color
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroud.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //! Solar System
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                //! Sun
                Image.asset(
                  planets[0].iconImage,
                  width: 400,
                  height: 350,
                ),

                //! Planet 1 (Top)
                Positioned(
                  top: 30,
                  child: Image.asset(
                    planets[3].iconImage,
                    width: 50,
                    height: 50,
                  ),
                ),

                //! Planet 2 (Top-Left)
                Positioned(
                  top: 60,
                  left: 90,
                  child: Image.asset(
                    planets[1].iconImage,
                    width: 50,
                    height: 50,
                  ),
                ),

                //! Planet 3 (Top-Right)
                Positioned(
                  top: 60,
                  right: 90,
                  child: Image.asset(
                    planets[4].iconImage,
                    width: 50,
                    height: 50,
                  ),
                ),

                //! Planet 4 (Left)
                Positioned(
                  left: 20,
                  child: Image.asset(
                    planets[6].iconImage,
                    width: 100,
                    height: 50,
                  ),
                ),
                //! Planet 6 (Bottom-Left)
                Positioned(
                  bottom: 60,
                  left: 90,
                  child: Image.asset(
                    planets[2].iconImage,
                    width: 50,
                    height: 50,
                  ),
                ),
                //! Planet 5 (Right)
                Positioned(
                  right: 45,
                  child: Image.asset(
                    planets[5].iconImage,
                    width: 50,
                    height: 50,
                  ),
                ),

                //! Planet 7 (Bottom-Right)
                Positioned(
                  bottom: 60,
                  right: 90,
                  child: Image.asset(
                    planets[8].iconImage,
                    width: 50,
                    height: 50,
                  ),
                ),

                //! Planet 8 (Bottom)
                Positioned(
                  bottom: 20,
                  child: Image.asset(
                    planets[7].iconImage,
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
          ),

          //! Bottom navigation bar
          const BottomNavbar(),
        ],
      ),
    );
  }
}
