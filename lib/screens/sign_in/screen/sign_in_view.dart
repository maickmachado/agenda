import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/models/message_sign_up.dart';
import 'package:sex_shopp_aplication/models/media_login_widget.dart';
import 'package:sex_shopp_aplication/screens/sign_in/components/sign_in_message_widget.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

import '../components/sign_in_form_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SignInMessage(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              SignInForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              MediaLoginIcons(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              MessageSignUp(),
            ],
          ),
        ),
      ),
    );
  }
}
