import 'package:flutter/material.dart';
import 'package:freshfood/features/auth/presentation/pages/complete_information/widgets/login_info_view_body.dart';

class LoginInfoView extends StatelessWidget {
  const LoginInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginInfoViewBody(),
    );
  }
}
