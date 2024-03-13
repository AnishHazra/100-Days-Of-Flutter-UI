import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:naruto_characters/model/model.dart';

class AnimeCharacters extends StatefulWidget {
  const AnimeCharacters({super.key});

  @override
  State<AnimeCharacters> createState() => _AnimeCharactersState();
}

class _AnimeCharactersState extends State<AnimeCharacters>
    with TickerProviderStateMixin {
  final character = characters.length;

  //animation
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 5), vsync: this)
        ..repeat(reverse: true);

  late final Animation<double> animation = Tween<double>(begin: 1, end: 1.2)
      .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

  void despose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: character,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              //For images
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ScaleTransition(
                  scale: animation,
                  child: Image.network(
                    characters[index]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.1),
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 500),
                        child: Text(
                          characters[index]['name'],
                          style: const TextStyle(
                            fontSize: 42,
                            height: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      FadeInDown(
                        duration: const Duration(milliseconds: 750),
                        delay: const Duration(milliseconds: 100),
                        child: Text(
                          characters[index]['about'],
                          style: const TextStyle(
                            fontSize: 16,
                            height: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            FadeInRight(
                              duration: const Duration(milliseconds: 750),
                              delay: const Duration(milliseconds: 100),
                              child: SizedBox(
                                child: Text(
                                  characters[index]['topAbilities'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 750),
                        delay: const Duration(milliseconds: 100),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    "More Detail",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
