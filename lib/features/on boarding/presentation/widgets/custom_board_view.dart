import 'package:flutter/material.dart';
import 'package:freshfood/features/on%20boarding/presentation/widgets/page_view_item.dart';

class CustomBoardView extends StatelessWidget {
  const CustomBoardView({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(image: 'on_board', text: 'Fresh groceries to\nyour doorstep!', subText: 'Lorem ipsum dolor sit amet, consecteturadipisicing elit, sed do eiusmod temporincididunt ut labore et dolore.'),
        PageViewItem(image: 'on_board2', text: 'Shop your daily\nnecessary!', subText: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.'),
        PageViewItem(image: 'on_board3', text: 'Fast Shipment\nto your home!', subText: 'Lorem ipsum dolor sit amet, consecteturadipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.'),
      ],
    );
  }
}
