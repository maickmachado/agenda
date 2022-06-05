import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/forgot_password/screen/forgot_password_view.dart';

import '../../../global/size_config.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Forgot Password",
          ),
        ),
      ),
      body: ForgotPasswordView(),
    );
  }
}
