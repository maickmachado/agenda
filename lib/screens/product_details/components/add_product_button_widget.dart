import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/default_button_widget.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

import '../../../global/constants.dart';

class AddProductButton extends StatelessWidget {
  const AddProductButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.screenWidth * 0.15, 10, SizeConfig.screenWidth * 0.15, 20),
      child: DefaultButton(
          text: "Adicionar ao carrinho",
          press: () {},
          buttonColor: kPrimaryColor),
    );
  }
}
