import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/cart/components/cart_product_list_widget.dart';
import 'package:sex_shopp_aplication/screens/cart/components/check_out_botton_bar_cat_widget.dart';
import 'package:sex_shopp_aplication/screens/cart/components/custom_app_bar_cart_widget.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBarCart(),
      ),
      body: Column(
        children: [
          Expanded(
            child: CartProductList(),
          ),
        ],
      ),
      bottomNavigationBar: CheckOutBottonBar(),
    );
  }
}
