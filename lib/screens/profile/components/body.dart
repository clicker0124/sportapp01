import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shop_app/screens/add_product/add_product.dart';
import '../../../db/brand.dart';
import '../../../db/catergory.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

TextEditingController categoryController = TextEditingController();
TextEditingController brandController = TextEditingController();
GlobalKey<FormState> _categoryFormKey = GlobalKey();
GlobalKey<FormState> _brandFormKey = GlobalKey();
BrandService _brandService = BrandService();
CategoryService _categoryService = CategoryService();

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Add Category",
            icon: "assets/icons/Game Icon.svg",
            press: () => {_catergoryAlert(context)},
          ),
          ProfileMenu(
            text: "Add Brand",
            icon: "assets/icons/Game Icon.svg",
            press: () => {_brandAlert(context)},
          ),
          ProfileMenu(
            text: "Add Product",
            icon: "assets/icons/Game Icon.svg",
            press: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AddProduct()))
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }

  void _catergoryAlert(cc) {
    var alert = new AlertDialog(
      content: Form(
        key: _categoryFormKey,
        child: TextFormField(
          controller: categoryController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'category cannot be empty';
            }
          },
          decoration: InputDecoration(hintText: "add category"),
        ),
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              if (categoryController.text != null) {
                _categoryService.createCategory(categoryController.text);
              }
              Fluttertoast.showToast(msg: 'category created');
              Navigator.pop(cc);
            },
            child: Text('ADD')),
        FlatButton(
            onPressed: () {
              Navigator.pop(cc);
            },
            child: Text('CANCEL')),
      ],
    );
    showDialog(context: cc, builder: (_) => alert);
  }
}

void _brandAlert(cc) {
  var alert = new AlertDialog(
    content: Form(
      key: _brandFormKey,
      child: TextFormField(
        controller: brandController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'category cannot be empty';
          }
        },
        decoration: InputDecoration(hintText: "add brand"),
      ),
    ),
    actions: <Widget>[
      FlatButton(
          onPressed: () {
            if (brandController.text != null) {
              _brandService.createBrand(brandController.text);
            }
            Fluttertoast.showToast(msg: 'brand created');
            Navigator.pop(cc);
          },
          child: Text('ADD')),
      FlatButton(
          onPressed: () {
            Navigator.pop(cc);
          },
          child: Text('CANCEL')),
    ],
  );
  showDialog(context: cc, builder: (_) => alert);
}
