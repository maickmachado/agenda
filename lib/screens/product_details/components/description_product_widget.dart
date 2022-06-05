import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sex_shopp_aplication/global/constants.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct(
      {Key? key,
      required this.title,
      required this.isFavourite,
      required this.description})
      : super(key: key);
  final String title;
  final bool isFavourite;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25)),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              width: getProportionateScreenWidth(64),
              decoration: BoxDecoration(
                color: isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color: isFavourite ? Color(0xFFFF4848) : Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64),
            ),
            child: Text(
              description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: 10,
            ),
            //TODO: mudar como o texto muda colocar para fechar com ... e quando clucar em mostrar mais ser um dropdown que mostra o texto completo talvez usando uim, ifstatemant (se clicado mostra sem restrição max d elinhas, se não mostra com no maximo 3
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Text(
                    "Mais detalhes",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 20,
                    color: kPrimaryColor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
