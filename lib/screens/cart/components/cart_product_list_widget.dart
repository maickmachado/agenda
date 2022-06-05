import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';
import 'package:sex_shopp_aplication/models/cart_model.dart';
import 'package:sex_shopp_aplication/screens/cart/components/cart_product_card_widget.dart';

class CartProductList extends StatefulWidget {
  const CartProductList({Key? key}) : super(key: key);

  @override
  State<CartProductList> createState() => _CartProductListState();
}

class _CartProductListState extends State<CartProductList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: CartProductCard(
              cart: demoCarts[index],
              ondiss: (direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
