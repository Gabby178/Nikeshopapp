import 'package:flutter/material.dart';
import 'package:shoeapp/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list  of shoes for sale
  List<shoe> shoeshop = [
    shoe(
      name: 'Zoom Freak',
      price: '236',
      description: 'feel the heat',
      image: 'images/1.jpg',
    ),
    shoe(
      name: 'Elite Zoom',
      price: '236',
      description: 'feel the heat',
      image: 'images/3.jpg',
    ),
    shoe(
      name: 'Air Force',
      price: '236',
      description: 'feel the heat',
      image: 'images/5.webp',
    ),
    shoe(
      name: 'Jordan',
      price: '236',
      description: 'feel the heat',
      image: 'images/4.webp',
    ),
  ];
  //list of items in the users cart
  List<shoe> userCart = [];

  //get list of shoes  for sale
  List<shoe> getshoelist() {
    return shoeshop;
  }

  //get cart
  List<shoe> getuserCart() {
    return userCart;
  }

  // add item from cart
  void additemtocart(shoe Shoe) {
    userCart.add(Shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeitemtocart(shoe Shoe) {
    userCart.remove(Shoe);
    notifyListeners();
  }
}
