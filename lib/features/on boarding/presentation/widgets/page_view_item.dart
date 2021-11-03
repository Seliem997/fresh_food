import 'package:flutter/material.dart';
import 'package:freshfood/core/constants.dart';
import 'package:freshfood/core/widgets/space_widget.dart';
import 'package:sizer/sizer.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, required this.image, required this.text, required this.subText}) : super(key: key);

  final String image;
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SpacerVerticalWidget(20 ),
        SizedBox(
            height: 55.h,
            width: 100.w,
            child: Image.asset('assets/images/$image.png',fit: BoxFit.fitWidth,)),
        const SpacerVerticalWidget(2),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: kColorTextMain,
            letterSpacing: 1,

          ),
        ),
        const SpacerVerticalWidget(1),
        Text(
          subText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            color: kColorTextSecondary,
          ),
        ),
      ],
    );
  }
}
