import 'package:day6_clockbase/models/watch.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Watch> watchShop = [
    Watch(
      name: 'Apple Watch 4',
      price: "240",
      imagePath: 'assets/images/5.jpg',
      description:
          "The design of Apple Watch Series 4 is refined with softer, more rounded corners and the display.",
    ),
    Watch(
      name: 'Apple Watch 5',
      price: "320",
      imagePath: 'assets/images/2.jpg',
      description:
          "Apple Watch Series 5 is the most durable Apple Watch ever, with a stronger display.",
    ),
    Watch(
      name: 'Apple Watch 6',
      price: "320",
      imagePath: 'assets/images/3.png',
      description:
          "Apple Watch to have an IP6X certification for resistance to dust, and water.",
    ),
    Watch(
      name: 'Apple Watch 7',
      price: "320",
      imagePath: 'assets/images/4.png',
      description:
          "Apple Watch Series 7 introduces five beautiful new aluminium case finishes.",
    ),
    Watch(
      name: 'Apple Watch 8',
      price: "320",
      imagePath: 'assets/images/1.jpg',
      description:
          "Apple Watch continues to offer indispensable tools for health and wellness.",
    ),
  ];

  //list of items in the user cart
  List<Watch> userCart = [];

  //get list of watch for sale
  List<Watch> getWatchList() {
    return watchShop;
  }

  //get cart
  List<Watch> getUserCart() {
    return userCart;
  }

  //add items to the cart
  void addItemToCart(Watch watch) {
    userCart.add(watch);
    notifyListeners();
  }

  //remove items to the cart
  void removeItemToCart(Watch watch) {
    userCart.remove(watch);
    notifyListeners();
  }
}
