import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freshfood/core/widgets/space_widget.dart';
import 'package:sizer/sizer.dart';

import '../constants.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({Key? key, this.text, this.onTap}) : super(key: key);
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [kColorGrediantStart,kColorGrediantEnd]),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              letterSpacing: 1.5,
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({Key? key, required this.text, this.iconData,  this.onTap, this.color}) : super(key: key);
  final String text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 5.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: kColorTextSecondary
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                color: color,
              ),
              const SpacerHorizintalWidget(2),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
    );
  }
}
