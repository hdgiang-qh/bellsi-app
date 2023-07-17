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
        body: Container(
          child: buildGrid(),
        ));
  }
}
