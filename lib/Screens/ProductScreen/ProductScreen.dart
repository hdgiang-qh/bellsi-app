import 'dart:convert';

import 'package:bellsi_app/Screens/ProductScreen/ProductDetail.dart';
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

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
              // child: ListBody(
              //   children: <Widget>[
              //     Text('Bùng nổ doanh số '),
              //     Text('❌ DEAL HOT -BÒ AUKOBE CẮT SALE ĐẬM ❌'),
              //   ],
              // ),
              ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Các Sản Phẩm Hiện Có'),
        ),
        body: SafeArea(
            child: Column(
          children: [
            // Container(
            //   height: 100,
            // ),
            Container(
              height: 500,
              child: FutureBuilder(
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
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            child: TextButton(
                              //padding: EdgeInsets.all(8),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductDetail()));
                              },
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Text(
                                              items[index].name.toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5, left: 8, right: 8),
                                            child: Text(
                                              items[index].price.toString(),
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  items[index]
                                                      .category
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                                Text(
                                                  items[index].brand.toString(),
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color:
                                                          Colors.orangeAccent,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Container(
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5)),
                                                      border: Border.all(
                                                          width: 1,
                                                          color: Colors
                                                              .cyanAccent)),
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                      overlayColor:
                                                          MaterialStateProperty
                                                              .resolveWith<
                                                                  Color?>(
                                                        (Set<MaterialState>
                                                            states) {
                                                          if (states.contains(
                                                              MaterialState
                                                                  .pressed))
                                                            return Colors.blue[
                                                                100]; //<-- SEE HERE
                                                          return null; // Defer to the widget's default.
                                                        },
                                                      ),
                                                      backgroundColor:
                                                          MaterialStatePropertyAll<
                                                                  Color>(
                                                              Colors.white),
                                                    ),
                                                    onPressed: _showMyDialog,
                                                    child: Text(
                                                      'Xem Giá Sỉ',
                                                      style: TextStyle(
                                                          color: Colors.cyan),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
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
            )
          ],
        )));
  }
}
