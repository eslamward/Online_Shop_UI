import 'package:online_shop/data/models/product_model.dart';

class CartItem {
  String id;
  String title;
  int quantity;
  double price;
  Product product;

  CartItem({
    required this.product,
    required this.price,
    required this.title,
    required this.id,
    required this.quantity,
  });
}
