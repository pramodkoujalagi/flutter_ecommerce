import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'gameover',
        price: '400',
        imagePath: 'lib/images/gameover.jpeg',
        description: 'the forward thinking design of his latest T-Shirt.'),
    Shoe(
        name: 'th',
        price: '350',
        imagePath: 'lib/images/th.jpeg',
        description:
            'you got best fantastic T-Shirt.it is more usable copare to others'),
    Shoe(
        name: 'lost',
        price: '500',
        imagePath: 'lib/images/lost.png',
        description: 'the forward thinking design of his latest T-Shirt.'),
    Shoe(
        name: 'snow',
        price: '390',
        imagePath: 'lib/images/snow.jpeg',
        description:
            'you got best fantastic T-Shirt.'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];
  //get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemTocart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
