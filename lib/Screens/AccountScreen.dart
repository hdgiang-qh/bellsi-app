import 'dart:math';

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List<Container> _buildGridTileList(int count) {
    return List<Container>.generate(
        count,
        (int index) => Container(
                child: Column(
              children: [
                Image.asset('assets/images/pic${index + 1}.jpg'),
              ],
            )));
  }

  final List<Map> _products = List.generate(
      10,
      (index) => {
            "id": index,
            "name": "Product $index",
            "price": Random().nextInt(100)
          }).toList();

  Widget buildGrid() {
    return GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _buildGridTileList(2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Screen'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: _products.length,
          itemBuilder: (BuildContext ctx, index) {
            return GridTile(
              key: ValueKey(_products[index]['id']),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text(
                  _products[index]['name'],
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("\$${_products[index]['price'].toString()}"),
                trailing: const Icon(Icons.shopping_cart),
              ),
              child: Image.network(
                'https://www.kindacode.com/wp-content/uploads/2021/12/phone.jpeg',
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
