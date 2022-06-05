import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sex_shopp_aplication/global/icon_button_with_counter_widget.dart';
import 'package:sex_shopp_aplication/screens/home/components/popular/popular_list_widget.dart';
import 'package:sex_shopp_aplication/screens/product_details/components/add_product_button_widget.dart';
import 'package:sex_shopp_aplication/screens/product_details/components/description_product_widget.dart';
import 'package:sex_shopp_aplication/screens/product_details/components/product_images_widget.dart';
import 'package:sex_shopp_aplication/screens/product_details/components/selector_product_type/color_selector_widget.dart';

import '../../../provider/products_provider.dart';
import '../components/custom_app_bar_widget.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    final ProductIndex arguments =
        ModalRoute.of(context)!.settings.arguments as ProductIndex;
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData.items;

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: products[arguments.index].rating),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageProductDetail(
              product: products[arguments.index],
            ),
            DescriptionProduct(
              title: products[arguments.index].title,
              isFavourite: products[arguments.index].isFavourite,
              description: products[arguments.index].description,
            ),
            Row(
              children: [
                ColorSelector(color: products[arguments.index].colors),
                Spacer(),
                IconButtonWithCounter(
                    svgIcon: "assets/icons/minus-svgrepo-com.svg",
                    press: () {}),
                SizedBox(
                  width: 20,
                ),
                IconButtonWithCounter(
                    svgIcon: "assets/icons/plus-svgrepo-com.svg", press: () {})
              ],
            ),
            AddProductButton(),
          ],
        ),
      ),
    );
  }
}
