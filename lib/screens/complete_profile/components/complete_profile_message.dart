import 'package:flutter/material.dart';

import '../../../global/constants.dart';
import '../../../global/size_config.dart';

class CompleteProfileMessage extends StatelessWidget {
  const CompleteProfileMessage({Key? key}) : super(key: key);

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
          "Complete suas informações \npara finalizar o cadastro",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
