import 'package:flutter/material.dart';
import 'package:freshfood/core/constants.dart';
import 'package:freshfood/features/on%20boarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState(){
    super.initState();
    goToNextView();
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/WelcomeScreen.png',fit: BoxFit.cover,),
          Positioned(
            bottom: 15.h,
            left: 25.w,
            child: const Text(
              'Fruits Market',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                // fontFamily: 'Raleway',
                color: kColorTextMain,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],

    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3),()
    {
      Get.to(() => const OnBoardingView(), transition: Transition.fade);
    } );
  }
}
