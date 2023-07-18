import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

import 'ProductDataModel.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Future<List<ProductDataModel>> ReadJsonData() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('assets/jsonfile/productlist.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Các Sản Phẩm Hiện Có'),
        ),
        body: SafeArea(
          child:
              // ListView(
              //         children: [
              //           Container(
              //             height: 700,
              //             child:
              FutureBuilder(
            future: ReadJsonData(),
            builder: (context, data) {
              if (data.hasError) {
                return Center(child: Text("Hiện Chưa Có Sản Phẩm"));
              } else if (data.hasData) {
                var items = data.data as List<ProductDataModel>;
                return ListView.builder(
                    itemCount: items == null ? 0 : items.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 70,
                                child: Image(
                                  image: NetworkImage(
                                      items[index].imageURL.toString()),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 8, right: 8),
                                      child: Text(
                                        items[index].name.toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 5, left: 8, right: 8),
                                      child:
                                          Text(items[index].price.toString()),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 8, right: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // Text("Giá Cũ:"),
                                          Text(
                                              items[index].category.toString()),
                                          Text(
                                            items[index].brand.toString(),
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.orangeAccent,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Container(
                                              height: 25,
                                              child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text('Xem Giá Sỉ')))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          //     ),
          //   ],
          // ),
        ));
  }
}
