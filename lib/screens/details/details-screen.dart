import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_order/constants.dart';
import 'package:food_order/screens/details/components/app_bar.dart';
import 'package:food_order/screens/details/components/item_image.dart';
import 'package:food_order/screens/details/components/order_button.dart';
import 'package:food_order/screens/details/components/title_price_rating.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(
          imgSrc: 'assets/images/burger.png',
        ),
        ItemInfo(),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            shopName(name: 'MacDonalds'),
            TitlePriceRating(
              name: 'Cheese Burger',
              numOfReviews: 24,
              rating: 4,
              price: 15,
              onRatingChanged: (value) {},
            ),
            Text(
              'Чи́збургер (англ. Cheeseburger, от англ. cheese — сыр) — вид гамбургера с обязательным добавлением сыра. В дополнение к мясу (жаренная котлета из говяжьего фарша) и сыру чизбургер может иметь большое количество разнообразных соусов: чаще на основе кетчупа, но допускается и употребление майонеза.',
              style: TextStyle(height: 1.5),
            ),
            SizedBox(
              height: 20,
            ),
            OrderButton(
              size: size,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }

  Row shopName({String name}) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(name),
      ],
    );
  }
}
