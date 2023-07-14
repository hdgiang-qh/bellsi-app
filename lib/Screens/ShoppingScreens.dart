import 'package:bellsi_app/Product/ListProduct.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      leading: Container(
        width: 60,
        // height: 50,
        child: TextField(
          style: TextStyle(
            fontSize: 16,
          ),
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: ''),
        ),
      ),
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          )),
      subtitle: Text(subtitle),
      trailing: Icon(
        icon,
        color: Colors.red[500],
      ),
    );
  }

  Widget buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave',
            Icons.restore_from_trash_sharp),
        _tile('The Castro Theater', '429 Castro St',
            Icons.restore_from_trash_sharp),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St',
            Icons.restore_from_trash_sharp),
      ],
    );
  }

  Widget buildItem() {
    return Column(
      children: [
        Container(
          height: 60,
          margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: '123'),
                    ),
                  )),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Áo Chống Nắng',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                flex: 6,
              ),
              Icon(
                Icons.restore_from_trash,
                size: 30,
                color: Colors.red,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }

  Widget buildIfm() {
    return Container(
      height: 335,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            alignment: Alignment.centerLeft,
            child: Text(
              "Chi tiết giá",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Giá bán lẻ', style: TextStyle(fontSize: 16)),
                Text('750000')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chi tiết khuyến mãi",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
                Text("")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Điểm tích lũy', style: TextStyle(fontSize: 16)),
                Text('750000')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Chiết khấu đơn hàng', style: TextStyle(fontSize: 16)),
                Text('750000', style: TextStyle(color: Colors.green))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Chiết khấu Khách kim cương',
                    style: TextStyle(fontSize: 16)),
                Text('750000', style: TextStyle(color: Colors.green))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Chiết khấu số lượng sản phẩm',
                    style: TextStyle(fontSize: 16)),
                Text('750000', style: TextStyle(color: Colors.green))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Lợi nhuận', style: TextStyle(fontSize: 16)),
                Text('750000', style: TextStyle(color: Colors.green))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Thuế', style: TextStyle(fontSize: 16)),
                Text('750000')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Phí vận chuyển', style: TextStyle(fontSize: 16)),
                Text('750000')
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCost() {
    return Container(
        child: Column(
      children: [
        Divider(
          thickness: 1,
          color: Colors.white,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tổng Tiền Thanh Toán",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Text("100000",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(elevation: 0),
            child: Text("Đặt Hàng"),
          ),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lựa chọn và Thanh Toán'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ListProduct()));
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        child: Text('Choses Pruduct')),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                            height: 160,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: buildList()),
                        Divider(
                          thickness: 2,
                          color: Colors.black,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Container(
                            height: 430,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [buildIfm(), buildCost()],
                            )),
                      ],
                    ),
                  )
                  //)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
