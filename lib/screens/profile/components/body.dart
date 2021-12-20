import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shop_app/screens/add_product/add_product.dart';
import '../../../db/brand.dart';
import '../../../db/catergory.dart';

import 'package:shop_app/screens/profile/components/profile_menu.dart';

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
          // ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Профайл",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Захиалга",
            icon: "assets/icons/Cash.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Хийсэн гүйлгээний түүх",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),

          ProfileMenu(
            text: "Категор нэмэх",
            icon: "assets/icons/Settings.svg",
            press: () => {_catergoryAlert(context)},
          ),
          ProfileMenu(
            text: "Бранд нэмэх",
            icon: "assets/icons/Settings.svg",
            press: () => {_brandAlert(context)},
          ),
          ProfileMenu(
            text: "Бараа нэмэх",
            icon: "assets/icons/Settings.svg",
            press: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AddProduct()))
            },
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
              return 'Хоосон байж болохгүй.';
            }
          },
          decoration: InputDecoration(hintText: "Категор нэмэх"),
        ),
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              if (categoryController.text != null) {
                _categoryService.createCategory(categoryController.text);
              }
              Fluttertoast.showToast(msg: 'Категор нэмэгдлээ.');
              Navigator.pop(cc);
            },
            child: Text('Нэмэх')),
        FlatButton(
            onPressed: () {
              Navigator.pop(cc);
            },
            child: Text('Болих')),
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
            return 'Хоосон байж болохгүй.';
          }
        },
        decoration: InputDecoration(hintText: "Бранд нэмэх"),
      ),
    ),
    actions: <Widget>[
      FlatButton(
          onPressed: () {
            if (brandController.text != null) {
              _brandService.createBrand(brandController.text);
            }
            Fluttertoast.showToast(msg: 'Бранд нэмэгдлээ.');
            Navigator.pop(cc);
          },
          child: Text('Нэмэх')),
      FlatButton(
          onPressed: () {
            Navigator.pop(cc);
          },
          child: Text('Болих')),
    ],
  );
  showDialog(context: cc, builder: (_) => alert);
}
