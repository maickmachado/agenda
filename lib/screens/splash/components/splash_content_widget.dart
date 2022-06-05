import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(255),
          width: getProportionateScreenWidth(225),
        ),
      ],
    );
  }
}
