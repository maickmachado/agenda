import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/constants.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';
import 'package:sex_shopp_aplication/screens/sign_in/screen/sign_in_screen.dart';
import 'package:sex_shopp_aplication/screens/splash/components/build_dot_widget.dart';
import 'package:sex_shopp_aplication/screens/splash/components/splash_content_widget.dart';

import '../../../global/default_button_widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var currentPage = 0;
  List<Map> splashData = [
    {
      "text": "Seja bem-vindo, vamos começar",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "nosso propósito é \ngarantir descrição",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "somo referência em produtos. \nvamos curtir!",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(60),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "SEX SHOP",
                style: TextStyle(
                    //TODO: o fontsize nao respeita o expanded colocar um tamanho fixo ou ajustar para nao dar overflow
                    fontSize: getProportionateScreenWidth(30),
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 3,
              //TODO: alterar o pageview para o pack caurusel slider com timer
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) {
                    return SplashContent(
                      text: splashData[index]["text"],
                      image: splashData[index]["image"],
                    );
                  }),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          splashData.length,
                          (index) =>
                              BuildDot(currentPage: currentPage, index: index),
                        ),
                      ],
                    ),
                    DefaultButton(
                        buttonColor:
                            currentPage == 2 ? kPrimaryColor : kSecondaryColor,
                        text: "CADASTRAR-SE",
                        press: currentPage == 2
                            ? () {
                                Navigator.pushReplacementNamed(
                                    context, SignInScreen.routeName);
                              }
                            : () {}),
                    SizedBox(
                      height: getProportionateScreenHeight(60),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
