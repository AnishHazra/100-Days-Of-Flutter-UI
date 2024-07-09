import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:space_app/model/planet.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 600,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Swiper(
          itemCount: planets.length,
          physics: const BouncingScrollPhysics(),
          itemHeight: 600,
          itemWidth: double.infinity,
          layout: SwiperLayout.TINDER,
          pagination: const SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              activeColor: Colors.white,
              activeSize: 12,
              size: 8,
              color: Colors.white24,
            ),
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 40),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 35,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 200),
                              Text(
                                planets[index].name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const Text(
                                "Solar System",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 30),
                              const Row(
                                children: [
                                  Text(
                                    "Know more",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.amber,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    planets[index].iconImage,
                    // height: 300,
                    // width: 300,
                  ),
                  Positioned(
                    right: 10,
                    bottom: 120,
                    child: Text(
                      planets[index].id.toString(),
                      style: TextStyle(
                        fontSize: 260,
                        color: Colors.black45.withOpacity(0.1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
