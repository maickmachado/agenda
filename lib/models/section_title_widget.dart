import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.text, required this.press})
      : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18), color: Colors.black),
        ),
        GestureDetector(
          child: const Text("veja mais"),
          onTap: press,
        )
      ],
    );
  }
}
