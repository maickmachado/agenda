import 'package:flutter/material.dart';

import 'size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    required this.buttonColor,
  }) : super(key: key);

  final String text;
  final Function press;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(50),
      child: TextButton(
        onPressed: press as void Function()?,
        child: Text(text),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: buttonColor,
          primary: Colors.white,
          textStyle: TextStyle(fontSize: getProportionateScreenWidth(15)),
        ),
      ),
    );
  }
}
