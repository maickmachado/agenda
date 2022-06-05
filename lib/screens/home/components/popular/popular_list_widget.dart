import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sex_shopp_aplication/screens/home/components/popular/popular_item_widget.dart';
import 'package:sex_shopp_aplication/screens/product_details/screen/product_detail_screen.dart';

import '../../../../provider/products_provider.dart';

class PopularItemList extends StatelessWidget {
  const PopularItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData.items;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ...List.generate(
          products.length,
          (index) => PopularItem(
            product: products[index],
            press: () => Navigator.pushNamed(
                //TODO: trocar o index pelo ID do produto products[index].id
                context,
                ProductDetailScreen.routeName,
                arguments: ProductIndex(index: index)),
          ),
        ),
      ]),
    );
  }
}

class ProductIndex {
  final index;
  ProductIndex({required this.index});
}
