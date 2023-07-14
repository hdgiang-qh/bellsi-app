import 'dart:io';

import 'package:bellsi_app/main.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
  ];

  Widget buildItem1() {
    return Container(
      child: DropdownButtonHideUnderline(
        child: Text('View'),
      ),
    );
  }

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              backgroundColor: Color.fromARGB(255, 0, 137, 209),
                            ),
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            child: Text(
                              'X',
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, right: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: const Row(
                              children: [
                                SizedBox(
                                  width: 1,
                                ),
                                Expanded(
                                    child: Icon(
                                  Icons.account_tree,
                                )),
                              ],
                            ),
                            items: items
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              // setState(() {
                              //   selectedValue = value;
                              // });
                            },
                            buttonStyleData: ButtonStyleData(
                              height: 40,
                              width: 70,
                              padding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  // border: Border.all(
                                  //   color: Colors.black26,
                                  // ),
                                  color: Colors.blue[300]),
                              elevation: 2,
                            ),
                            // iconStyleData: const IconStyleData(
                            //   icon: Icon(
                            //     Icons.arrow_forward_ios_outlined,
                            //   ),
                            //   iconSize: 14,
                            //   iconEnabledColor: Colors.yellow,
                            //   iconDisabledColor: Colors.grey,
                            // ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white,
                              ),
                              offset: const Offset(-20, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all(6),
                                thumbVisibility:
                                    MaterialStateProperty.all(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 60,
                              padding: EdgeInsets.only(left: 14, right: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, right: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: const Row(
                              children: [
                                SizedBox(
                                  width: 1,
                                ),
                                Expanded(
                                    child: Icon(
                                  Icons.account_tree,
                                )),
                              ],
                            ),
                            items: items
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              // setState(() {
                              //   selectedValue = value;
                              // });
                            },
                            buttonStyleData: ButtonStyleData(
                              height: 40,
                              width: 70,
                              padding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  // border: Border.all(
                                  //   color: Colors.black26,
                                  // ),
                                  color: Colors.blue[300]),
                              elevation: 2,
                            ),
                            // iconStyleData: const IconStyleData(
                            //   icon: Icon(
                            //     Icons.arrow_forward_ios_outlined,
                            //   ),
                            //   iconSize: 14,
                            //   iconEnabledColor: Colors.yellow,
                            //   iconDisabledColor: Colors.grey,
                            // ),
                            dropdownStyleData: DropdownStyleData(
                              maxHeight: 200,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white,
                              ),
                              offset: const Offset(-20, 0),
                              scrollbarTheme: ScrollbarThemeData(
                                radius: const Radius.circular(40),
                                thickness: MaterialStateProperty.all(6),
                                thumbVisibility:
                                    MaterialStateProperty.all(true),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 60,
                              padding: EdgeInsets.only(left: 14, right: 14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(fontSize: 16),
                          //     obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Tên sản phẩm/Barcode',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 5),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {},
                            child: Icon(Icons.search)),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Container(
                    height: 650,
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: const Text("He'd have you all unravel at the"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[200],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Heed not the rabble'),
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Thêm'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[300],
                          child: const Text('Sound of screams but the'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[400],
                          child: const Text('Who scream'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[500],
                          child: const Text('Revolution is coming...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[600],
                          child: const Text('Revolution, they...'),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
