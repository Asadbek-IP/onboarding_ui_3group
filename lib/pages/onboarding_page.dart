import 'package:flutter/material.dart';
import 'package:onboarding_ui/widgets/indigator_item.dart';
import 'package:onboarding_ui/widgets/onboarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController _pageController = PageController();
  int hozirgiPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                hozirgiPageIndex = index;
              });
            },
            controller: _pageController,
            children: [
              OnboardingItem(
                image: "assets/images/onboarding_1.png",
                text1: "Boost Productivity",
                text2: """Foc.io helps you boost your productivity
on a differnet level""",
                index: hozirgiPageIndex,
                controller: _pageController,
              ),
              OnboardingItem(
                image: "assets/images/onboarding_2.png",
                text1: "Work Seamlessly",
                text2: """Get your work done seamlessly
without interruption""",
                index: hozirgiPageIndex,
                controller: _pageController,
              ),
              OnboardingItem(
                image: "assets/images/onboarding_3.png",
                text1: "Achieve Higher Goals",
                text2: """By boosting your producivity we help
you achieve higher goals""",
                index: hozirgiPageIndex,
                controller: _pageController,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _builderItem(hozirgiPageIndex),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<Widget> _builderItem(int hozirgiIndex) {
  List<Widget> list = [];

  for (int i = 0; i < 3; i++) {
    if (hozirgiIndex == i) {
      list.add(
        IndigatorItem(isActive: true),
      );
    } else {
      list.add(
        IndigatorItem(isActive: false),
      );
    }
  }
  return list;
}
