import 'package:flutter/cupertino.dart';
import 'package:freshfood/core/constants.dart';
import 'package:freshfood/core/widgets/custom_buttons.dart';
import 'package:freshfood/features/auth/presentation/pages/login/login_view.dart';
import 'package:freshfood/features/on%20boarding/presentation/widgets/custom_board_view.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  @override
  void initState() {
    // TODO: implement initState
    pageController=PageController(
      initialPage: 0
    )..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomBoardView(pageController: pageController!,),
        Visibility(
          visible: pageController!.hasClients ? (pageController!.page == 2 ? false : true) : true ,
          child: Positioned(
            top: 6.h,
            right: 3.w,
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                color: kColorTextSecondary,
              ),
            ),
          ),
        ),

        Positioned(
          left: 25.w,
          right: 25.w,
          bottom: 15.h,
          child: CustomGradientButton(
            onTap: (){
              if(pageController!.page! < 2){
                pageController!.nextPage(
                    duration: const Duration(microseconds: 500),
                    curve: Curves.easeIn);
              }else{
                Get.to( () => const LoginView(),
                  transition:Transition.rightToLeft,
                  duration: const Duration(microseconds: 500),
                );
              }
            },
            text: pageController!.hasClients ? (pageController?.page == 2 ? "Get Started" : "Next") : "Next" ,
            )),

      ],

    );
  }
}
