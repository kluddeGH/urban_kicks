
import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop=[
    //shoelist
//1
     Shoe(
      name: 'Air Force 1',
      price: '120',
      imagePath: 'lib/images/shoes1.png',
      description: 'Classic streetwear staple, timeless design meets ultimate comfort.',
    ),
    
//2
    Shoe(
      name: 'Air Jordan 4',
      price: '250',
      imagePath: 'lib/images/shoes8.png',
      description: 'Legendary hoops heritage, iconic silhouette with unmatched comfort and style.',
    ),
//3
     Shoe(
      name: 'Reebok Classic',
      price: '75',
      imagePath: 'lib/images/shoes2.png',
      description: 'Timeless trainer, clean design with heritage-inspired details.',
    ),

    
//4
    Shoe(
      name: 'Herman H2',
      price: '90',
      imagePath: 'lib/images/shoes4.png',
      description: ' Rugged, durable footwear built for the outdoors, ready for any adventure.',
    ),
//5
    Shoe(
      name: 'NB 550',
      price: '125',
      imagePath: 'lib/images/shoes3.png',
      description: 'Premium running shoe, unmatched comfort and timeless design.',
    ),
//6

    Shoe(
      name: 'Dunk Orange',
      price: '180',
      imagePath: 'lib/images/shoes13.png',
      description: 'Retro basketball silhouette, urban edge meets athletic performance.',
    ),
   
//7
    Shoe(
      name: 'Xtep 1-V2',
      price: '255',
      imagePath: 'lib/images/shoes7.png',
      description: 'low-profile sneaker, street-ready with classic suede construction.',
    ),
//8
    Shoe(
      name: 'Dunk Green',
      price: '150',
      imagePath: 'lib/images/shoes14.png',
      description: 'Dunk Low Iconic low-profile design, vibrant green colorway for standout style.',
    ),
//9
    Shoe(
      name: 'Air Jordan 1',
      price: '220',
      imagePath: 'lib/images/shoes12.png',
      description: 'Iconic basketball kicks with high-flying style and supreme comfort.',
    ), 
//10
    Shoe(
      name: 'Zoom Pegasus 32',
      price: '135',
      imagePath: 'lib/images/shoes10.png',
      description: 'High-performance running shoe with responsive cushioning and sleek design.',
    ),
    //end of shoe list
  ];

  //list of item in user cart
  List<Shoe>userCart = [];
  //get list of shoes for Sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get Cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add to Cart
  void addItemToCart( Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove from cart
  void removeItemFromCart( Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}