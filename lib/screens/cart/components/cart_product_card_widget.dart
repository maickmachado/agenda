import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sex_shopp_aplication/global/constants.dart';
import 'package:sex_shopp_aplication/global/size_config.dart';
import 'package:sex_shopp_aplication/models/cart_model.dart';

class CartProductCard extends StatefulWidget {
  const CartProductCard({Key? key, required this.cart, required this.ondiss})
      : super(key: key);

  final Cart cart;
  final ondiss;

  @override
  State<CartProductCard> createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.cart.product.id.toString()),
      onDismissed: widget.ondiss,
      direction: DismissDirection.endToStart,
      background: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xFFFFE6E6),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [Spacer(), SvgPicture.asset("assets/icons/Trash.svg")],
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(88),
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(widget.cart.product.images[0]),
              ),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                //demoCarts[0].product.title,
                widget.cart.product.title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(
                  text: "\$${widget.cart.product.price}",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: " quantidade: ${widget.cart.numOfItem}",
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
