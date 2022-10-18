import 'package:flutter/material.dart';

import '../const/color_palatte.dart';
import '../const/textstyle_ext.dart';

class ItemButtonWidget extends StatelessWidget {
  const ItemButtonWidget({super.key, required this.data, required this.color, this.onTap});

  final String data;
  final Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          data,
          style: color == null
              ? TextStyles.defaultStyle.whiteTextColor.bold
              : TextStyles.defaultStyle.bold.copyWith(
                  color: ColorPalette.primaryColor,
                ),
        ),
      ),
    );
  }
}
