import 'package:assignment_07/cart.dart';
import 'package:flutter/material.dart';
import 'package:assignment_07/productlist1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Product List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product List')),
      body: ListView.builder(
          itemCount: allProductList1.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(allProductList1[index].images),
                ),
                title: Text(allProductList1[index].name),
                subtitle: Text(allProductList1[index].price),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      child: Text(
                        '${allProductList1[index].counter}',
                        style: const TextStyle(fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                           _itemCount = allProductList1[index].counter = allProductList1[index].counter + 1;
                            //_itemCount++;
                          });
                          if (allProductList1[index].counter == 5) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: AlertDialog(
                                title: const Text('You are Hero'),
                                content: Text('Congratulations! You\'hv bought 5 ${allProductList1[index].name}'),),),);

                                // Text(
                                //     'Congratulations! You\'hv bought 5 ${allProductList1[index].name}')));
                          }
                        },
                        child: const Text('Buy Now'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (c) => MyCart(counter: _itemCount),),);
        });
      },
      child: const Icon(Icons.shopping_cart),),
    );
  }
}
