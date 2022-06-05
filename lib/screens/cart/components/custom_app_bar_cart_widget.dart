import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sex_shopp_aplication/models/cart_model.dart';

import '../../../global/constants.dart';
import '../../../global/size_config.dart';

class CustomAppBarCart extends StatelessWidget {
  const CustomAppBarCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  primary: kPrimaryColor,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "assets/icons/Back ICon.svg",
                  height: 15,
                ),
              ),
            ),
            Column(
              children: [
                const Text(
                  "Meu carrinho",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  "${demoCarts.length} itens",
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
            SizedBox(
              width: getProportionateScreenWidth(40),
            ),
          ],
        ),
      ),
    );
  }
}
