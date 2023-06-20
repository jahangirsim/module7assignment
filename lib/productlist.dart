import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

String productList = 'Assignment 07 Product List';

var productList1 = [
  {'name': 'Apple', 'price': 'BDT: 130/KG'},
  {'name': 'Orange', 'price': 'BDT: 120/KG'},
  {'name': 'Mango', 'price': 'BDT: 45/KG'},
  {'name': 'Banana', 'price': 'BDT: 15/4pcs'},
  {'name': 'Potato', 'price': 'BDT: 08/KG'},
  {'name': 'Ladies Finger', 'price': 'BDT: 09/KG'},
  {'name': 'Salt', 'price': 'BDT: 13/KG'},
  {'name': 'Sugar', 'price': 'BDT: 35/KG'},
  {'name': 'Mustard Oil', 'price': 'BDT: 70/LTR'},
  {'name': 'Wheel Powder', 'price': 'BDT: 38/KG'},
  {'name': 'Beef Meat', 'price': 'BDT: 200/KG'},
  {'name': 'Bluetooth Keyboard', 'price': 'BDT: 300/PC'},
  {'name': 'Mac Book Pro 8/256GB', 'price': 'BDT: 65000'},
  {'name': 'Doll', 'price': 'BDT: 68/PC'},
  {'name': 'Bottle ground', 'price': 'BDT: 12/PC'},
];

// MySnackMessage(){
//   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Congratulations! You\'hv bought ${productList1[index]['name']}')));
// }

int counter = 0;

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(productList)),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 80,
            width: double.infinity,
            color: Colors.blueGrey.withOpacity(0.6),
            child: ListTile(
              title: Text(productList1[index]['name']!),
              subtitle: Text(productList1[index]['price']!),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    child: Text(
                      '$counter',
                      style: const TextStyle(fontSize: 10),
                    ),
                  ),
                  Container(
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        counter=counter+1;
                        setState(() {

                        });
                        if(counter == 5){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Congratulations! You\'hv bought 5 ${productList1[index]['name']}')));
                        }
                      },
                      child: const Text('Buy Now'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
