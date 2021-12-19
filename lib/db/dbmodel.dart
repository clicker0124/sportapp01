import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop_app/models/Product.dart';

class DatabaseManager {
  final CollectionReference prods =
      FirebaseFirestore.instance.collection('products');

// Future<void> createProductData(
//       String name, String gender, int score, String uid) async {
//     return await profileList
//         .document(uid)
//         .setData({'name': name, 'gender': gender, 'score': score});
//   }

  Future<List<Product>?> getProductList() async {
    // print("++++++++++GETPRODUCT++++++++++++");

    List<Product> productsList = [];
    //print("=====> ");

    try {
      await prods.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          Product pr = new Product(
              quantity: element['quantity'],
              // sizes: element['sizes'],
              brand: element['brand'],
              category: element['category'],
              id: element['id'],
              name: element['name'],
              picture: element['picture'],
              price: element['price']);

          productsList.add(pr);
          // productsList.add(element.data());
        });
      });
      // print("++++++++++PRODUCTIST++++++++++++");
      // print(productsList[0].toString());
      // print(productsList[0]['name']);
      return productsList;
    } catch (e) {
      //print(e.toString());
      print("=====> " + e.toString());
      return null;
    }
  }
}
