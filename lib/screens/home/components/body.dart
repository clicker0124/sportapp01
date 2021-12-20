import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(1)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            SizedBox(height: getProportionateScreenWidth(10)),
            PopularProduct(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
