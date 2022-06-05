import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'size_config.dart';

class BuildFormField extends StatelessWidget {
  const BuildFormField({
    Key? key,
    required this.svgIcon,
    required this.label,
    required this.hint,
    this.keyboard,
    required this.obscureText,
    required this.validator,
    required this.onChanged,
    required this.onSaved,
  }) : super(key: key);

  final svgIcon;
  final String label;
  final String hint;
  final TextInputType? keyboard;
  final bool obscureText;
  final validator;
  final onChanged;
  final onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboard,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            getProportionateScreenWidth(10),
            getProportionateScreenWidth(10),
            getProportionateScreenWidth(10),
          ),
          child: SvgPicture.asset(
            svgIcon,
            height: getProportionateScreenWidth(15),
          ),
        ),
      ),
    );
  }
}
