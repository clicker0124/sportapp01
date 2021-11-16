import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     centerTitle: true,
    //   ),
    //   body: Container(
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage(
    //             'assets/images/png-transparent-swoosh-nike-sneakers-logo-adidas-nike-orange-logo-sneakers.png'),
    //         fit: BoxFit.fill,
    //       ),
    //       shape: BoxShape.circle,
    //     ),
    //   ),
    // );
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
      // child: Text.rich(
      //   TextSpan(
      //     style: TextStyle(color: Colors.white),
      //     children: [
      //       TextSpan(text: "A Summer Surpise\n"),
      //       TextSpan(
      //         text: "Cashback 20%",
      //         style: TextStyle(
      //           fontSize: getProportionateScreenWidth(24),
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
