import 'package:assignment_07/productlist.dart';
import 'package:flutter/material.dart';



class MyCart extends StatefulWidget {

  const MyCart({Key? key, required this.counter}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
 final int counter;
}

class _MyCartState extends State<MyCart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your shopping cart'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total numbers of products = ${counter.toString()}')
          ],
        ),
      ),
    );
  }
}
