import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/cart/screen/cart_view.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartView(),
    );
  }
}
