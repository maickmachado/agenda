import 'package:flutter/material.dart';

import '../../../global/constants.dart';
import '../../../global/size_config.dart';

class SignUpMessage extends StatelessWidget {
  const SignUpMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
        ),
        Text(
          "Cadastro de conta",
          style: headingStyle,
        ),
        const Text(
          "Crie sua conta e senha \nou acesse com suas midias sociais",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
