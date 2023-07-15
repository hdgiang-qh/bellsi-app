import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ListTile _tile(String title, String subtitle, IconData icon, Color color) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        size: 30,
      ),
      iconColor: color,
    );
  }

  Widget buildList() {
    return GridTile(
        child: ListView(
      children: [
        _tile(
          '3',
          'Đơn Chờ Xử Lý',
          Icons.shopping_cart_outlined,
          Colors.orange,
        ),
        _tile('The Castro Theater', '429 Castro St',
            Icons.shopping_bag_outlined, Colors.cyan),
        _tile(
          '3',
          'Đơn Chờ Xử Lý',
          Icons.shopping_cart_outlined,
          Colors.orange,
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: SizedBox(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      margin: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 5),
                              color: Colors.yellowAccent,
                              child: Row(
                                children: [
                                  //icon
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      size: 30,
                                      color: Colors.orange,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.pink[100],
                                    ),
                                    height: 50,
                                    width: 50,
                                  ),
                                  //information
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("3"),
                                        Text('Đơn chờ xử lý')
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              color: Colors.lightGreenAccent,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      size: 30,
                                      color: Colors.cyan,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue[100],
                                    ),
                                    height: 50,
                                    width: 50,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [Text("3"), Text('Tổng Đơn')],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
