import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/sign_up/screen/sign_up_view.dart';

import '../../../global/size_config.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Sign Up",
          ),
        ),
      ),
      body: SignUpView(),
    );
  }
}
