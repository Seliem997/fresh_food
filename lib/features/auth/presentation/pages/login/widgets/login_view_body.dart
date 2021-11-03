
import 'package:flutter/material.dart';
import 'package:freshfood/core/widgets/customTextFormField.dart';
import 'package:freshfood/core/widgets/custom_buttons.dart';
import 'package:freshfood/core/widgets/space_widget.dart';
import 'package:sizer/sizer.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const SpacerVerticalWidget(10),
          const CustomTextWidget(text: 'Welcome back ',),
          const SpacerVerticalWidget(10),
          const CustomTextFormFieldWdg(icon: Icons.email_outlined, hint: 'Enter your Email address', /*onClick: onClick*/),
          const SpacerVerticalWidget(5),
          const CustomTextFormFieldWdg(icon: Icons.lock_open_outlined, hint: 'Enter your password'),
          const SpacerVerticalWidget(15),
          Padding(
            padding: EdgeInsets.only(left: 20.w,right: 20.w),
            child: const CustomGradientButton(text: 'Sign in',),
          ),
          const SpacerVerticalWidget(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: const CustomButtonWithIcon(text: 'Log in with', ),
          ),
          const SpacerVerticalWidget(3),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: const CustomButtonWithIcon(text: 'Log in with', ),
          ),
        ],
      ),
    );
  }
}
