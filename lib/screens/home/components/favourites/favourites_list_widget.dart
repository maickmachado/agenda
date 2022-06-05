import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/home/components/favourites/favourites_item_widget.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "image": "assets/images/Image Banner 2.png",
        "category": "Smartphone",
        "num": 18
      },
      {
        "image": "assets/images/Image Banner 3.png",
        "category": "Fashion",
        "num": 5
      },
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => FavouriteItems(
              category: categories[index]["category"],
              image: categories[index]["image"],
              numOfBrands: categories[index]["num"],
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
