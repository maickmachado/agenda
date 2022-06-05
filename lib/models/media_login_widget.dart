import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sex_shopp_aplication/global/constants.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

class MediaLoginIcons extends StatelessWidget {
  const MediaLoginIcons({Key? key}) : super(key: key);

  final facebook = "assets/icons/facebook-2.svg";
  final google = "assets/icons/google-icon.svg";
  final twitter = "assets/icons/twitter.svg";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Center(
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(6)),
              height: getProportionateScreenHeight(40),
              width: getProportionateScreenWidth(40),
              decoration: BoxDecoration(
                color: kTextColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(facebook),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Center(
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(6)),
              height: getProportionateScreenHeight(40),
              width: getProportionateScreenWidth(40),
              decoration: BoxDecoration(
                color: kTextColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(google),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Center(
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(6)),
              height: getProportionateScreenHeight(40),
              width: getProportionateScreenWidth(40),
              decoration: BoxDecoration(
                color: kTextColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(twitter),
            ),
          ),
        ),
      ],
    );
  }
}
