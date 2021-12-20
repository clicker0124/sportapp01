import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';

import '../../../size_config.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 90,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
        vertical: getProportionateScreenWidth(10),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/png-transparent-swoosh-nike-sneakers-logo-adidas-nike-orange-logo-sneakers.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
