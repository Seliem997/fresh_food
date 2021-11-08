import 'package:flutter/material.dart';
import 'package:freshfood/core/widgets/custom_buttons.dart';
import 'package:freshfood/core/widgets/space_widget.dart';
import 'package:freshfood/features/auth/presentation/pages/complete_information/widgets/complete_info_item.dart';
import 'package:sizer/sizer.dart';

class CompleteInfoViewBody extends StatelessWidget {
  const CompleteInfoViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SpacerVerticalWidget(10),
            const CompleteInfoItem(text: 'Enter Your Name: ',textSize: 20,),
            const SpacerVerticalWidget(4),
            const CompleteInfoItem(text: 'Enter your phone Number:',textSize: 20,),
            const SpacerVerticalWidget(4),
            const CompleteInfoItem(text: 'Enter your address:',maxLines: 5,textSize: 20,),
            const SpacerVerticalWidget(8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: const CustomGradientButton(text: 'Login',),
            )
          ],
        ),
      ),
    );
  }
}
