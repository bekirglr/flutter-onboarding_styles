import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              OnBoardingPageWidget(model: ),
              Container(color: tOnBoardingPage2Color,),
              Container(color: tOnBoardingPage3Color,),
            ],
          )
        ],
      ),
    );
  }
}

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: model.height * 0.5,),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.titleMedium,),
              Text(model.subTitle, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodySmall,),
            ],
          ),
          Text(model.counterText, style: Theme.of(context).textTheme.bodyMedium,),
          SizedBox(height: 50.0,)
        ],
      ),
    );
  }
}