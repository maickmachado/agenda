import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          errors.length,
          (index) => formErrorText(error: errors[index]),
        ),
      ],
    );
  }

//TODO: colocar os erros fixos e a medida que for sendo preenchido vao ficando verde e mudam o icone de erro
  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
