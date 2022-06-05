import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/models/media_login_widget.dart';
import 'package:sex_shopp_aplication/screens/sign_up/components/sign_up_form_widget.dart';
import 'package:sex_shopp_aplication/screens/sign_up/components/sign_up_message_widget.dart';

import '../../../global/size_config.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
              SignUpMessage(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              MediaLoginIcons(),
              //TODO: adicionar um texto padrão informando que o usuario a partir do momento que clicar em continuar ele concorda com a politica de privacidade
            ],
          ),
        ),
      ),
    );
  }
}
