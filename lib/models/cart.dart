import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
    name: 'ZoomFreak', 
    price: '236', 
    description: 'The forward thinking design of his signature shoe.', 
    imagePath: 'lib/images/nikeGreen.webp',
    ),
    Shoe(
    name: 'Air Jordans', 
    price: '220', 
    description: 'You\'ve got the hope and speed-lace up in shoes that enhance what you bring to the code.', 
    imagePath: 'lib/images/nikeRed.avif',
    ),
    Shoe(
    name: 'KD Treys', 
    price: '240', 
    description: 'Bouncy cushioning is paired with soft yet supportive form for enhanced comfort and performance.', 
    imagePath: 'lib/images/nikeWhite.jpeg',
    ),
    Shoe(
    name: 'Kyrie 6S', 
    price: '190', 
    description: 'A Secure mid foot strap is suited for scoring bridges and defensive maneuvers', 
    imagePath: 'lib/images/nikeBlack.jpeg',
    ),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items to cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}