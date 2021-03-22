import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order/components/search_box.dart';
import 'package:food_order/constants.dart';
import 'package:food_order/screens/home/components/category_item.dart';
import 'package:food_order/screens/home/components/category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
      ],
    );
  }
}
