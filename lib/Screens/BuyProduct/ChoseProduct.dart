import 'dart:io';
import 'SelectedFilter.dart';
import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';
import 'package:get/get.dart';

class ChoseProduct extends StatefulWidget {
  const ChoseProduct({super.key});

  @override
  State<ChoseProduct> createState() => _ChoseProductState();
}

class User {
  final String? name;
  final String? avatar;
  User({required this.name, required this.avatar});
}

class _ChoseProductState extends State<ChoseProduct> {
  bool isSelected = false;
  final List<String> brands = ['Uliqlo', 'Gucci', 'Apolo'];

  final List<String> _listElec = [
    'TV',
    'Điện Thoại',
    'Máy Tính',
    'Laptop',
    'Dieu Hoa'
  ];
  int index = 0;
  GridTile _tile(String title, String subtitle, Image image) {
    return GridTile(
      child: Container(
        //margin: EdgeInsets.all(5),
        color: Colors.white,
        //   child: image,
      ),
      header: Container(
        //   color: Colors.red,
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 8,
              child: Container(
                alignment: Alignment.center,
                child: image,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(title),
            ),
            Expanded(
              flex: 1,
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      footer: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        padding: EdgeInsets.only(right: 0)),
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      size: 20,
                    )),
              ),
            ],
          )),
    );
  }

  Widget buildList() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      children: [
        _tile(
            'Áo Chống Nắng',
            '100,000',
            Image.asset(
              'assets/images/pic1.jpg',
              //  fit: BoxFit.cover,
            )),
        _tile('Sữa Rửa Mặt Than Tre', '150,000',
            Image.asset('assets/images/pic2.jpg')),
        _tile('TV Sony', '15,000,000', Image.asset('assets/images/pic3.jpg')),
        _tile('Sữa Rửa Mặt Than Tre', '150,000',
            Image.asset('assets/images/pic2.jpg')),
        _tile('Sữa Rửa Mặt Than Tre', '150,000',
            Image.asset('assets/images/pic2.jpg')),
      ],
    );
  }

  var controller = Get.put(SelectedListController());
  void openFilterDialog(context) async {
    await FilterListDialog.display<String>(
      context,
      listData: _listElec,
      selectedListData: controller.getSelectedList(),
      choiceChipLabel: (item) => item,
      validateSelectedItem: (list, val) => list!.contains(val),
      onItemSearch: (list, text) {
        return list.toLowerCase().contains(text.toLowerCase());
      },
      onApplyButtonClick: (list) {
        controller.setSelectedList(List<String>.from(list!));
        Navigator.of(context).pop();
      },
    );
  }

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                // button close
                Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  backgroundColor:
                                      Color.fromARGB(255, 0, 137, 209),
                                ),
                                onPressed: () {
                                  Navigator.pop(context, true);
                                },
                                child: Text(
                                  'X',
                                  style: TextStyle(fontSize: 20),
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                'Chọn Mua Sản Phẩm',
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                // tim kiem
                Container(
                  height: 50,
                  margin: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          color: Colors.white,
                          child: TextField(
                            style: TextStyle(fontSize: 16),
                            //     obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Tên sản phẩm/Barcode',
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.search),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(left: 5),
                          child: ElevatedButton(
                              onPressed: () => openFilterDialog(context),
                              child: Icon(Icons.tune)),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                //danh sach san pham
                Container(
                  height: 600,
                  child: buildList(),
                  margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
