import 'package:flutter/material.dart';
import 'package:freshfood/features/auth/presentation/pages/complete_information/widgets/complete_info_view_body.dart';

class CompleteInfoView extends StatelessWidget {
  const CompleteInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CompleteInfoViewBody(),
    );
  }
}
