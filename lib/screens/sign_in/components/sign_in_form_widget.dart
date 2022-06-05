import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/build_form_field_widget.dart';
import 'package:sex_shopp_aplication/global/default_button_widget.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';
import 'package:sex_shopp_aplication/screens/sign_in/components/checkbox_widget.dart';

import '../../../global/constants.dart';
import '../../../global/error_form_widget.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  late String email;
  late String password;
  final List<String> errors = [];
  bool checkbox = false;

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
              return null;
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
          CheckBoxSignIn(
              checkbox: checkbox,
              onChanged: (value) {
                setState(() {
                  checkbox = value!;
                });
              }),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          DefaultButton(
            text: "Login",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
            buttonColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
