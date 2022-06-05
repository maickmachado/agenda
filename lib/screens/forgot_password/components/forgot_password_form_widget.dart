import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/build_form_field_widget.dart';
import 'package:sex_shopp_aplication/global/error_form_widget.dart';

import '../../../global/constants.dart';
import '../../../global/default_button_widget.dart';
import '../../../global/size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  late String email;
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
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          //TODO: ativar o botao somente apos o email ser preenchido
          DefaultButton(
            text: "Continuar",
            press: () {
              if (_formKey.currentState!.validate()) {}
            },
            buttonColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
