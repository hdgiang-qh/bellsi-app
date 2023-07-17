import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ListTile _tile(String title, String subtitle, String one) {
    return ListTile(
        leading: Container(
          width: 40,
          margin: EdgeInsets.only(left: 10),
          height: 40,
          decoration: BoxDecoration(
              color: Colors.blue[100], borderRadius: BorderRadius.circular(5)),
          alignment: Alignment.center,
          child: Text(one),
        ),
        title: Text(title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            )),
        trailing: Text(subtitle));
  }

  Widget buildList() {
    return ListView(
      children: [
        _tile('Áo Chống Nắng', '5,000 ', '1'),
        _tile('Sữa Rửa Mặt Than Tre', '4,000 ', '2'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                //table view
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        margin: EdgeInsets.only(top: 10, left: 5, bottom: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(right: 5),
                                //  color: Colors.yellowAccent,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.greenAccent,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
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
                                          Text("3",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                          Text('Đơn chờ xử lý',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12))
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
                                decoration: BoxDecoration(
                                  //  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.greenAccent,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
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
                                        children: [
                                          Text(
                                            "8",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            'Tổng Đơn',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        margin: EdgeInsets.only(top: 5, left: 5, bottom: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.greenAccent,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    //icon
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Icon(
                                        Icons.add_chart_outlined,
                                        size: 30,
                                        color: Colors.cyan[900],
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blue[100],
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
                                          Text("2",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                          Text('Sản Phầm Đã Nhập',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12))
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
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.greenAccent,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Icon(
                                        Icons.attach_money,
                                        size: 30,
                                        color: Colors.red,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.pink[100],
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
                                        children: [
                                          Text("10,000,000",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                          Text('Tổng Nhập',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        margin: EdgeInsets.only(top: 5, left: 5, bottom: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.greenAccent,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    //icon
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Icon(
                                        Icons.trending_up,
                                        size: 30,
                                        color: Colors.green,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.green[100],
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
                                          Text("10,000",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                          Text('Tổng Điểm',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12))
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
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.greenAccent,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0,
                                    ), //BoxShadow
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Icon(
                                        Icons.notifications,
                                        size: 30,
                                        color: Colors.deepOrange,
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
                                        children: [
                                          Text('Tháng bùng \nnổ doanh số',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16))
                                        ],
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
                ),
                //bieu do
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  height: 400,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text('Area Chart'),
                ),
                //top doanh thu
                Container(
                  color: Colors.white,
                  margin:
                      EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text('Top Doanh Thu',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(5)),
                                  alignment: Alignment.center,
                                  child: Text("1"),
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Text('Tuấn NPP'),
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  alignment: Alignment.bottomRight,
                                  child: Text('15,000,000'),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //top tich luy
                Container(
                  color: Colors.white,
                  margin:
                      EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text('Top Điểm Tích Lũy',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(5)),
                                  alignment: Alignment.center,
                                  child: Text("1"),
                                )),
                            Expanded(
                                flex: 4,
                                child: Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Text('Tuấn NPP'),
                                )),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  alignment: Alignment.bottomRight,
                                  child: Text('10,000'),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //top ban chay
                Container(
                  color: Colors.white,
                  margin:
                      EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text('Top Bán Chạy',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                      ),
                      Container(
                        height: 160,
                        margin: EdgeInsets.only(bottom: 10),
                        child: buildList(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
