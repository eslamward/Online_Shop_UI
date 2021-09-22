import 'package:online_shop/data/models/cart_model.dart';
import 'package:online_shop/data/models/product_model.dart';

List<Product> products = [
  Product(
      description: "Lorem Ipsum",
      price: 250.0,
      city: "Cairo",
      id: "1",
      name: "Flower Code 7",
      imageUrl: "assets/images/image_1.png"),
  Product(
      description: "Lorem Ipsum",
      price: 300.0,
      city: "Paris",
      id: "2",
      name: "Flower Code 3",
      imageUrl: "assets/images/image_2.png"),
  Product(
      description: "Lorem Ipsum",
      price: 170.0,
      city: "Dubai",
      id: "3",
      name: "Flower Code 1",
      imageUrl: "assets/images/image_3.png"),
  Product(
      description: "Lorem Ipsum",
      price: 350.0,
      city: "Alex",
      id: "4",
      name: "Flower Code 2",
      imageUrl: "assets/images/img.png"),
  Product(
      description: "Lorem Ipsum",
      price: 230.0,
      city: "Cairo",
      id: "1",
      name: "Flower One",
      imageUrl: "assets/images/bottom_img_2.png"),
];
List<CartItem> cartItems = [
  CartItem(
      price: 500.0,
      title: "Flower Code 7",
      id: "1",
      quantity: 2,
      product: Product(
          description: "Lorem Ipsum",
          price: 250.0,
          city: "Cairo",
          id: "1",
          name: "Flower Code 7",
          imageUrl: "assets/images/image_1.png")),
  CartItem(
      price: 700.0,
      title: "Flower Code 3",
      id: "1",
      quantity: 4,
      product: Product(
          description: "Lorem Ipsum",
          price: 300.0,
          city: "Paris",
          id: "2",
          name: "Flower Code 3",
          imageUrl: "assets/images/image_2.png")),
  CartItem(
      price: 300.0,
      title: "Flower Code 2",
      id: "1",
      quantity: 1,
      product: Product(
          description: "Lorem Ipsum",
          price: 230.0,
          city: "Cairo",
          id: "1",
          name: "Flower One",
          imageUrl: "assets/images/bottom_img_2.png")),
];
