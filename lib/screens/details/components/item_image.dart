import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({
    Key key,
    this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      //covers 25% of screen height
      height: size.height * 0.25,
      //width: size.height * 0.25,
      fit: BoxFit.fill,
    );
  }
}
