import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/sign_in/screen/sign_in_view.dart';

import '../../../global/size_config.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Sign In",
          ),
        ),
      ),
      body: SignInView(),
    );
  }
}
