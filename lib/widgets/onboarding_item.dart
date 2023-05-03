import 'package:flutter/material.dart';
import 'package:onboarding_ui/pages/home_page.dart';

class OnboardingItem extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final int index;
  final PageController controller;
  const OnboardingItem(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.index,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF221F1E),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
          ),
          SizedBox(
            height: 64,
          ),
          Text(
            text1,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Gilroy",
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text2,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: "Gilroy",
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 130,
            height: 54,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color(0xFFEF895F)),
              onPressed: () {
                if (index == 2) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) => HomePage())));
                } else {
                  controller.animateToPage(index + 1,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.linear);
                }
              },
              child: Text(
                index == 2 ? "Get Started" : "Next",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Raleway",
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
