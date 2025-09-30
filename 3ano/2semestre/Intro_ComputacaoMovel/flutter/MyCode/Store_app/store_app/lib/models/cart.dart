import 'package:flutter/material.dart';
import 'package:store_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Force',
      price: 99,
      imagePath: 'lib/images/AirForce.png',
      description: 'The classical and stylish AirForce DayNight',
    ),
    Shoe(
      name: 'Special Design',
      price: 120,
      imagePath: 'lib/images/AirForceSpecialDesign.png',
      description: 'A unique and bold twist to the legendary Air Force design.',
    ),
    Shoe(
      name: 'Blue Run',
      price: 110,
      imagePath: 'lib/images/NikeBlueRun.png',
      description: 'Designed for runners who crave comfort and speed in style.',
    ),
    Shoe(
      name: 'Running Sneakers',
      price: 180,
      imagePath: 'lib/images/NikeRunningShoes.png',
      description: 'The perfect pair to go for a walk ou run!',
    ),
    Shoe(
      name: 'FlowerSneakers',
      price: 89.99,
      imagePath: 'lib/images/FlowerSneakers.png',
      description: 'Stylish and famulous flower nikes to improve tour day',
    ),
    Shoe(
      name: 'Orange AirJordan',
      price: 115,
      imagePath: 'lib/images/OrangeAirJordan.png',
      description: 'The classic ones but in orange',
    ),
    Shoe(
      name: 'Marty McFly Back To The Future',
      price: 5000,
      imagePath: 'lib/images/NikeMagMartyMcFlyBackToTheFuture.png',
      description:
          'Step into the future with the legendary self-lacing Nike Mag!',
    ),
  ];

  // list of itens in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add itens to cart
  void addItenToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItenFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
