import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

class MessageForgotPassword extends StatelessWidget {
  const MessageForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Recuperação de senha",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "Por favor, preencha seu email \npara receber o link de recuperação",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
