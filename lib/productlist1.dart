import 'package:flutter/material.dart';

class ProductList1 extends StatefulWidget {
  const ProductList1({Key? key}) : super(key: key);

  @override
  State<ProductList1> createState() => _ProductList1State();
}

class AllProductList1 {
  final String name;
  final String price;
  final String images;
  int? counter;

  AllProductList1(
      this.name,
      this.price,
      this.images,
      this.counter);



}
  List allProductList1 = [
    AllProductList1('Apple', 'BDT: 130/KG', 'images/apple.jpg', 0),
    AllProductList1('Orange', 'BDT: 125/KG', 'images/orange.jpg', 0),
    AllProductList1('Banana', 'BDT: 12/4pcs', 'images/banana.jpg', 0),
    AllProductList1('Beef', 'BDT: 450/KG', 'images/beef.jpg', 0),
    AllProductList1('Botte Ground', 'BDT: 25/PC', 'images/bottleground.jpg', 0),
    AllProductList1('Doll', 'BDT: 500/PC', 'images/doll.jpg', 0),
    AllProductList1('Goava', 'BDT: 40/KG', 'images/goava.jpg', 0),
    AllProductList1('Keyboard', 'BDT: 3000/PC', 'images/keyboard.jpg', 0),
    AllProductList1('Ladies Finger', 'BDT: 16/KG', 'images/ladiesfinger.jpg', 0),
    AllProductList1('Mac Book Pro 8/256GB', 'BDT: 65000/PC', 'images/mac-book.jpg', 0),
    AllProductList1('Mango', 'BDT: 125/KG', 'images/mango.jpg', 0),
    AllProductList1('Mustard Oil', 'BDT: 125/LTR', 'images/mustardoil.jpg', 0),
    AllProductList1('Pineapple', 'BDT: 30/PC', 'images/pineapple.jpg', 0),
    AllProductList1('Potato', 'BDT: 13/KG', 'images/potato.jpg', 0),
    AllProductList1('Salt', 'BDT: 23/KG', 'images/salt.jpg', 0),
    AllProductList1('Sugar', 'BDT: 72/KG', 'images/sugar.jpg', 0),
    AllProductList1('Wheel Powder', 'BDT: 75/KG', 'images/wheel.jpg', 0),
  ];

//   sum() {
//     for (int i=0; i<allProductList1.length; i++) {
// var sum;
//       sum+ = allProductList1[i].counter;
//     }
//   }


//int sum = allProductList1[index].counter(0, (a, b) => a + b);


class _ProductList1State extends State<ProductList1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
