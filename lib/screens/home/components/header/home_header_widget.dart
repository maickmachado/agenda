import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/home/components/header/search_field_widget.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SearchField(),
        // IconButtonWithCounter(
        //   svgIcon: "assets/icons/Cart Icon.svg",
        //   press: () => Navigator.pushNamed(context, CartScreen.routeName),
        //   numOfItem: 3,
        // ),
        // IconButtonWithCounter(
        //     svgIcon: "assets/icons/User Icon.svg", press: () {}),
      ],
    );
  }
}
