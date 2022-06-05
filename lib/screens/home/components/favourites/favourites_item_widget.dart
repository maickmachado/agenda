import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';
import 'package:sex_shopp_aplication/models/section_title_widget.dart';

class FavouriteItems extends StatelessWidget {
  const FavouriteItems(
      {Key? key,
      required this.category,
      required this.image,
      required this.numOfBrands,
      required this.press})
      : super(key: key);

  final String category;
  final String image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
          child: SizedBox(
            width: 200,
            height: 83,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF343434).withOpacity(0.4),
                          Color(0xFF343434).withOpacity(0.15),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenWidth(10),
                    ),
                    child: Text.rich(TextSpan(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: "$numOfBrands brands"),
                        ])),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
