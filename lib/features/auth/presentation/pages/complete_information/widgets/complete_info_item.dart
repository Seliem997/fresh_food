import 'package:flutter/cupertino.dart';
import 'package:freshfood/core/widgets/custom_text_fields.dart';
import 'package:freshfood/core/widgets/space_widget.dart';

class CompleteInfoItem extends StatelessWidget {
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  final double textSize;
  const CompleteInfoItem({Key? key, required this.text, this.inputType, this.maxLines, required this.textSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(text: text,textSize: textSize,),
        const SpacerVerticalWidget(2),
        CustomTextForm(inputType: inputType,maxLines: maxLines,),
      ],
    );
  }
}
