import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class SpacerVerticalWidget extends StatelessWidget {
  const SpacerVerticalWidget(this.value);
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value.h,
    );
  }
}

class SpacerHorizintalWidget extends StatelessWidget {
  const SpacerHorizintalWidget(this.value);
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value.w,
    );
  }
}
