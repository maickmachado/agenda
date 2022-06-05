import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/constants.dart';

import '../../../global/size_config.dart';

class SignInMessage extends StatelessWidget {
  const SignInMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Bem-vindo de volta!",
            style: headingStyle,
          ),
          const Text(
            "Faça login com seu email e senha \nou com sua midia social",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
