import 'package:flutter/material.dart';
import 'package:flutter_100day/animations/fade_animation.dart';

class TripPage extends StatefulWidget {
  const TripPage({super.key});

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  PageController? _pageController;
  int totalPage = 4;

  void _onScroll() {
    print('sss');
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
            page: 1,
            image: 'assets/images/one.jpg',
            title: 'Yosemite National Park',
            description:
                'Yosemite National Park is in California’s Sierra Nevada mountains.',
          ),
          makePage(
            page: 2,
            image: 'assets/images/two.jpg',
            title: 'Golden Gate Bridge',
            description:
                'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait.',
          ),
          makePage(
            page: 3,
            image: 'assets/images/three.jpg',
            title: 'Sedona',
            description:
                "Sedona is regularly described as one of America's most beautiful places.",
          ),
          makePage(
            page: 4,
            image: 'assets/images/four.jpg',
            title: 'Savannah',
            description:
                'Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina.',
          ),
        ],
      ),
    );
  }

  Widget makePage({page, image, title, description}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
            0.3,
            0.9
          ], colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2),
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                        1,
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                        1.5,
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 3),
                              child: const Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ),
                            const Text(
                              '4.0',
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                            const Text(
                              '(2300)',
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: FadeAnimation(
                          2,
                          Text(
                            description,
                            style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              height: 1.9,
                              fontSize: 15,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                        2.5,
                        const Text(
                          'READ MORE',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
