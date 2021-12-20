import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/allproductheader.dart';

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
            Logo(),
            SizedBox(height: getProportionateScreenHeight(1)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(5)),
            ProductHeader(),
            PopularProduct(),
          ],
        ),
      ),
    );
  }
}
