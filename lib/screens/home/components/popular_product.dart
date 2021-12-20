import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/db/dbmodel.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProduct extends StatefulWidget {
  _DashboardScreenState createState() => _DashboardScreenState();
}

List<Product> ProductList1 = [];

class _DashboardScreenState extends State<PopularProduct> {
  List<Product> ProductList = [];
  @override
  void initState() {
    super.initState();
    fetchProductList();
  }

  fetchProductList() async {
    List<Product>? resultant = await DatabaseManager().getProductList();

    setState(() {
      ProductList = resultant as List<Product>;
      ProductList1 = ProductList;
      print("++++++++++++++++++++++++++++++++++++++");
      print(ProductList1);
    });
    //}
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Бүтээгдэхүүн", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                ProductList.length,
                (index) {
                  return ProductCard(product: ProductList[index]);
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
