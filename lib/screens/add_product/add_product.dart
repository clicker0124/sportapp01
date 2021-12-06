import 'package:flutter/material.dart';
import 'dart:convert';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  Color white = Colors.white;
  Color black = Colors.black;
  Color grey = Colors.grey;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController productNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(
          Icons.close,
          color: black,
        ),
        title: Text(
          "add product",
          style: TextStyle(color: black),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlineButton(
                      borderSide:
                          BorderSide(color: grey.withOpacity(0.8), width: 1.0),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 24, 8.0, 24.0),
                        child: new Icon(Icons.add, color: grey),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlineButton(
                      borderSide:
                          BorderSide(color: grey.withOpacity(0.8), width: 1.0),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 24, 8.0, 24.0),
                        child: new Icon(Icons.add, color: grey),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlineButton(
                      borderSide:
                          BorderSide(color: grey.withOpacity(0.8), width: 1.0),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 24, 8.0, 24.0),
                        child: new Icon(Icons.add, color: grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Product name'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: productNameController,
                decoration: InputDecoration(hintText: 'Product name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Product ner ee oruul.';
                  } else if (value.length > 10) {
                    return 'Product iin ner heterhii urt baina.';
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
