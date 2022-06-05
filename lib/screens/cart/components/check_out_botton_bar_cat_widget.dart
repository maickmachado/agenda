import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sex_shopp_aplication/global/constants.dart';
import 'package:sex_shopp_aplication/global/default_button_widget.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

class CheckOutBottonBar extends StatefulWidget {
  const CheckOutBottonBar({Key? key}) : super(key: key);

  @override
  State<CheckOutBottonBar> createState() => _CheckOutBottonBarState();
}

class _CheckOutBottonBarState extends State<CheckOutBottonBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
        vertical: getProportionateScreenWidth(30),
      ),
      //height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.5),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                //TODO: colocar um campo digitavel e um botão de validação do cupom
                Text("Adicionar cupom de desconto"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total: ",
                    children: [
                      TextSpan(
                        text: "R\$330.15",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                      text: "Check Out",
                      press: () {},
                      buttonColor: kPrimaryColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
