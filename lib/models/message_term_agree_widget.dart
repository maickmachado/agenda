import 'package:flutter/material.dart';

import '../global/constants.dart';

class MessageTermsAgree extends StatelessWidget {
  const MessageTermsAgree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: const [
          Text(
            "Ao clicar no botão criar conta você concorda com nossos termos e condições",
            textAlign: TextAlign.center,
          ),
          Text(
            "Política - Termos e Condições",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
