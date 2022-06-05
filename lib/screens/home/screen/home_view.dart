import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/home/components/categories/categories_list_widget.dart';
import 'package:sex_shopp_aplication/screens/home/components/discount/discount_banner_widget.dart';
import 'package:sex_shopp_aplication/screens/home/components/favourites/favourites_list_widget.dart';
import 'package:sex_shopp_aplication/screens/home/components/header/home_header_widget.dart';
import 'package:sex_shopp_aplication/screens/home/components/popular/popular_list_widget.dart';

import '../../../global/size_config.dart';
import '../../../models/section_title_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeState();
}

class _HomeState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: HomeHeader(),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //SignUpMessage(),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.03,
                  ),
                  DiscountBanner(),
                  //SignUpForm(),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.04,
                  ),
                  Categories(),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.04,
                  ),
                  SectionTitle(
                    text: 'Ofetas especiais para você',
                    press: () {},
                  ),
                  Favourite(),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.04,
                  ),
                  SectionTitle(
                    text: 'Os mais procurados',
                    press: () {},
                  ),
                  PopularItemList(),
                  //MediaLoginIcons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
