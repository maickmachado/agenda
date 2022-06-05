import 'package:flutter/material.dart';

import '../../../../global/constants.dart';
import '../../../../global/size_config.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({Key? key, required this.color}) : super(key: key);

  final List<Color> color;

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          widget.color.length,
          (index) => buildColorSelected(index),
        ),
      ],
    );
  }

  GestureDetector buildColorSelected(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(5), vertical: 10),
        child: Container(
          margin: EdgeInsets.only(right: 2),
          padding: EdgeInsets.all(8),
          height: getProportionateScreenWidth(40),
          width: getProportionateScreenWidth(40),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: selectedColor == index
                    ? kPrimaryColor
                    : Colors.transparent),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: widget.color[index], shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
