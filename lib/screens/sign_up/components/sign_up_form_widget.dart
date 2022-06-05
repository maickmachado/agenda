import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/build_form_field_widget.dart';
import 'package:sex_shopp_aplication/global/default_button_widget.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

import '../../../global/constants.dart';
import '../../../global/error_form_widget.dart';
import '../../complete_profile/screen/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  String? email;
  String? password;
  String? confirm_password;
  //TODO: adicionar campo de cadastro de endereço utilizando CEP com base em algum API
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          BuildFormField(
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(
                  () {
                    errors.remove(kEmailNullError);
                  },
                );
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(
                  () {
                    errors.remove(kInvalidEmailError);
                  },
                );
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(
                  () {
                    errors.add(kEmailNullError);
                  },
                );
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(
                  () {
                    errors.add(kInvalidEmailError);
                  },
                );
              }
              return null;
            },
            obscureText: false,
            keyboard: TextInputType.emailAddress,
            label: "Email",
            hint: "Coloque seu email",
            svgIcon: "assets/icons/Mail.svg",
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          BuildFormField(
            onSaved: (newValue) => password = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kPassNullError)) {
                setState(
                  () {
                    errors.remove(kPassNullError);
                  },
                );
              } else if (value.length >= 6 &&
                  errors.contains(kShortPassError)) {
                setState(
                  () {
                    errors.remove(kShortPassError);
                  },
                );
              }
              password = value;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kPassNullError)) {
                setState(
                  () {
                    errors.add(kPassNullError);
                  },
                );
              } else if (value.length < 6 &&
                  !errors.contains(kShortPassError)) {
                setState(
                  () {
                    errors.add(kShortPassError);
                  },
                );
              }
              return null;
            },
            obscureText: true,
            keyboard: TextInputType.visiblePassword,
            label: "Senha",
            hint: "Coloque sua senha",
            svgIcon: "assets/icons/Lock.svg",
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          BuildFormField(
            onSaved: (newValue) => confirm_password = newValue,
            onChanged: (value) {
              if (errors.contains(kMatchPassError) && (password == value)) {
                setState(
                  () {
                    errors.remove(kMatchPassError);
                  },
                );
              }
              confirm_password = value;
            },
            validator: (value) {
              if (errors.contains(kMatchPassError)) {
                return null;
              } else if (password != value) {
                setState(
                  () {
                    errors.add(kMatchPassError);
                  },
                );
              }
              return null;
            },
            obscureText: true,
            keyboard: TextInputType.visiblePassword,
            label: "Confirmar senha",
            hint: "Confirme sua senha",
            svgIcon: "assets/icons/Lock.svg",
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          DefaultButton(
            text: "Continuar",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
            buttonColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
