import 'package:education_app_tdd/core/res/media_resolutions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageUnderConstruction extends StatelessWidget {
  const PageUnderConstruction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage(MediaResolution.onBoardingBackground),
          fit: BoxFit.cover 
          ),
        ),
        child: Lottie.asset(MediaResolution.pageUnderConstruction)
      ),
    );
  }
}
