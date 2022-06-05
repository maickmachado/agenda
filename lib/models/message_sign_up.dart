import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/forgot_password/screen/forgot_password_screen.dart';
import 'package:sex_shopp_aplication/screens/sign_up/screen/sign_up_screen.dart';

import '../global/constants.dart';

class MessageSignUp extends StatelessWidget {
  const MessageSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: mudar o gesture detector para somente o 'faça seu cadastro' e ver como fica
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignUpScreen.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Não possui conta? ",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Faça seu cadastro",
            style: TextStyle(fontSize: 15, color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
