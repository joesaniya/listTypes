import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key? key}) : super(key: key);

  // Generate a massive list of dummy products
  final myProducts = List<String>.generate(1000, (i) => 'Product $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('KindaCode.com'),
        ),
        // implement the list view
        body: ListView.builder(
            // the number of items in the list
            itemCount: myProducts.length,
            itemExtent: 150,
            scrollDirection: Axis.horizontal,

            // itemBuilder: (context, index,)
            // {
            //   return  Container(
            //     margin: EdgeInsets.all(5.0),
            //     // width: 800,
            //     height: 80,
            //     color: Colors.red,
            //   );
            // }

            // display each item of the product list
            itemBuilder: (context, index) {
              return Card(
                // In many cases, the key isn't mandatory
                key: ValueKey(myProducts[index]),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(myProducts[index])),
              );
            }
            ));
  }
}