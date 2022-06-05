import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/constants.dart';

import '../../forgot_password/screen/forgot_password_screen.dart';

class CheckBoxSignIn extends StatelessWidget {
  const CheckBoxSignIn(
      {Key? key, required this.checkbox, required this.onChanged})
      : super(key: key);
  final checkbox;
  final onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: kPrimaryColor,
          value: checkbox,
          onChanged: onChanged,
        ),
        const Text("Manter-se logado"),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
          },
          child: const Text(
            "Esqueci a senha",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
