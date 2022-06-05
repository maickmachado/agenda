import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/build_form_field_widget.dart';
import 'package:sex_shopp_aplication/global/default_button_widget.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';
import 'package:sex_shopp_aplication/screens/home/screen/home_screen.dart';

import '../../../global/constants.dart';
import '../../../global/error_form_widget.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();

  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          BuildFormField(
            onSaved: (newValue) => firstName = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kNameNullError)) {
                setState(
                  () {
                    errors.remove(kNameNullError);
                  },
                );
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kNameNullError)) {
                setState(
                  () {
                    errors.add(kNameNullError);
                  },
                );
              }
              return null;
            },
            obscureText: false,
            label: "Primeiro Nome",
            hint: "Coloque seu nome",
            svgIcon: "assets/icons/User.svg",
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          BuildFormField(
            onSaved: (newValue) => lastName = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kLastNameNullError)) {
                setState(
                  () {
                    errors.remove(kLastNameNullError);
                  },
                );
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kLastNameNullError)) {
                setState(
                  () {
                    errors.add(kLastNameNullError);
                  },
                );
              }
              return null;
            },
            obscureText: false,
            label: "Sobrenome",
            hint: "Coloque seu sobrenome",
            svgIcon: "assets/icons/User.svg",
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          BuildFormField(
            onSaved: (newValue) => phoneNumber = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
                setState(
                  () {
                    errors.remove(kPhoneNumberNullError);
                  },
                );
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
                setState(
                  () {
                    errors.add(kPhoneNumberNullError);
                  },
                );
              }
              return null;
            },
            obscureText: false,
            keyboard: TextInputType.phone,
            label: "Celular",
            hint: "Coloque o número do seu celular",
            svgIcon: "assets/icons/Phone.svg",
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          BuildFormField(
            onSaved: (newValue) => address = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kAddressNullError)) {
                setState(
                  () {
                    errors.remove(kAddressNullError);
                  },
                );
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kAddressNullError)) {
                setState(
                  () {
                    errors.add(kAddressNullError);
                  },
                );
              }
              return null;
            },
            obscureText: false,
            label: "Endereço",
            hint: "Coloque seu endereço",
            svgIcon: "assets/icons/Location point.svg",
          ),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          DefaultButton(
            text: "Criar conta",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              }
            },
            buttonColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
