import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_screens/starting_page_1.dart';
import 'intro_screens/starting_page_2.dart';
import 'intro_screens/starting_page_3.dart';

class OnBoardingScren extends StatefulWidget {
  const OnBoardingScren({super.key});

  @override
  State<OnBoardingScren> createState() => _OnBoardingScrenState();
}

class _OnBoardingScrenState extends State<OnBoardingScren> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [IntroPage1(), IntroPage2(), IntroPage3()],
          ),
          //dot indicator
          Container(
              alignment: const Alignment(0, 0.75),
              child: SmoothPageIndicator(controller: _controller, count: 3))
        ],
      ),
    );
  }
}
