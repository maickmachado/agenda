import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';
import 'package:sex_shopp_aplication/models/message_sign_up.dart';
import 'package:sex_shopp_aplication/screens/forgot_password/components/forgot_password_form_widget.dart';
import 'package:sex_shopp_aplication/screens/forgot_password/components/message_forgot_password_widget.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            MessageForgotPassword(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            ForgotPasswordForm(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            MessageSignUp(),
          ],
        ),
      ),
    );
  }
}
