import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order/screens/home/home_screen.dart';

AppBar detailsAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.white,
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset('assets/icons/share.svg'),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset('assets/icons/more.svg'),
        onPressed: () {},
      ),
    ],
  );
}
