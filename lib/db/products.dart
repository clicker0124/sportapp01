// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:shop_app/models/product1.dart';

// List _products = [];

// class ProductsService {
//   FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   String collection = 'products';
//   Future<List<Product>> getFeaturedProducts() => _firestore
//           .collection(collection)
//           .where('featured', isEqualTo: true)
//           .get()
//           .then((snap) {
//         List<Product> featuredProducts = [];
//         snap.docs.map(
//             (snapshot) => featuredProducts.add(Product.fromSnapshot(snapshot)));

//         return featuredProducts;
//       });
// }
// fetchProducts() async {
//   var _firestoreInstance = FirebaseFirestore.instance;
//   QuerySnapshot qn = await _firestoreInstance.collection("products").get();
//   setState(() {
//     for (int i = 0; i < qn.docs.length; i++) {
//       _products.add({
//         "brand": qn.docs[i]["brand"],
//         "category": qn.docs[i]["category"],
//         "name": qn.docs[i]["name"],
//         "picture": qn.docs[i]["picture"],
//         "price": qn.docs[i]["price"],
//         "quantity": qn.docs[i]["quantity"],
//         "sizes": qn.docs[i]["sizes"],
//       });
//     }
//   });
//   return qn.docs;
// }

