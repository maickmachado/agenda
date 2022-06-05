import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/constants.dart';

class BuildDot extends StatelessWidget {
  const BuildDot({
    Key? key,
    required this.index,
    required this.currentPage,
  }) : super(key: key);
  final int? index;
  final currentPage;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
