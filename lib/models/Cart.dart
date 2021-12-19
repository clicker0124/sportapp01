import 'Product.dart';
import 'package:shop_app/screens/home/components/popular_product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: ProductList1[0], numOfItem: 2),
  Cart(product: ProductList1[1], numOfItem: 1),
];
