import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/product_details/screen/product_detail_view.dart';

import '../../../global/size_config.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = "/product_detail_screen";

  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: ProductDetailView(),
    );
  }
}
