import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_strings.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashScreenController.animate.value ? -50 : -150,
              left: splashScreenController.animate.value ? -20 : -150,
              child: const Image(
                image: AssetImage(tSplashTopIcon)
              )
            ),
          ),
          Obx(
            () => AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: 100,
            left: splashScreenController.animate.value ? 200 : -200,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName, style: Theme.of(context).textTheme.titleSmall,),
                    Text(tAppTagLine, style: Theme.of(context).textTheme.bodySmall,),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            bottom: splashScreenController.animate.value ? 250 : 0,
            left: 40,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: const Image(
                image: AssetImage(tSplashImage)
              )
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            bottom: splashScreenController.animate.value ? 50 : 0,
            right: tDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashScreenController.animate.value ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
