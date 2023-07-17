import 'dart:io';
import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class User {
  final String? name;
  final String? avatar;
  User({required this.name, required this.avatar});
}

List<User> userList = [
  User(name: "Jon", avatar: ""),
  User(name: "Lindsey ", avatar: ""),
  User(name: "Valarie ", avatar: ""),
  User(name: "Elyse ", avatar: ""),
  User(name: "Ethel ", avatar: ""),
  User(name: "Emelyan ", avatar: ""),
  User(name: "Catherine ", avatar: ""),
  User(name: "Stepanida  ", avatar: ""),
  User(name: "Carolina ", avatar: ""),
  User(name: "Nail  ", avatar: ""),
  User(name: "Kamil ", avatar: ""),
  User(name: "Mariana ", avatar: ""),
  User(name: "Katerina ", avatar: ""),
];

class _ListProductState extends State<ListProduct> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
  ];
  int index = 0;
  GridTile _tile(String title, String subtitle, Image image) {
    return GridTile(
      child: Container(
        //margin: EdgeInsets.all(5),
        color: Colors.white,
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
              // Container(
              //   width: 30,
              //   height: 30,
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(50)),
              //         padding: EdgeInsets.only(right: 0)),
              //     onPressed: () {},
              //     child: Icon(
              //       Icons.remove,
              //       size: 20,
              //     ),
              //   ),
              // ),
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
            'Áo Chống Nắng', '100,000', Image.asset('assets/images/pic1.jpg')),
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

  Widget buildFilter(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text('Thương Hiệu'),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: items
                      .map(
                        (name) => FilterChip(
                            label: Text(name),
                            onSelected: (selected) {
                              Navigator.pop(context, true);
                            }),
                      )
                      .toList()),
            ],
          )),
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
                // button filter
                Container(
                  height: 60,
                  color: Colors.white,
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
                      // Container(
                      //   margin: EdgeInsets.only(top: 5, right: 5),
                      //   child: DropdownButtonHideUnderline(
                      //     child: DropdownButton2<String>(
                      //       isExpanded: true,
                      //       hint: const Row(
                      //         children: [
                      //           SizedBox(
                      //             width: 1,
                      //           ),
                      //           Expanded(
                      //             child: Text('Thương Hiệu'),
                      //             //     child: Icon(
                      //             //   Icons.account_tree,
                      //             // )
                      //           ),
                      //         ],
                      //       ),
                      //       items: items
                      //           .map((String item) => DropdownMenuItem<String>(
                      //                 value: item,
                      //                 child: Text(
                      //                   item,
                      //                   style: const TextStyle(
                      //                     fontSize: 14,
                      //                     fontWeight: FontWeight.bold,
                      //                     color: Colors.black,
                      //                   ),
                      //                   overflow: TextOverflow.ellipsis,
                      //                 ),
                      //               ))
                      //           .toList(),
                      //       value: selectedValue,
                      //       onChanged: (value) {
                      //         // setState(() {
                      //         //   selectedValue = value;
                      //         // });
                      //       },
                      //       buttonStyleData: ButtonStyleData(
                      //         height: 40,
                      //         width: 110,
                      //         padding:
                      //             const EdgeInsets.only(left: 14, right: 14),
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(14),
                      //             // border: Border.all(
                      //             //   color: Colors.black26,
                      //             // ),
                      //             color: Colors.blue[300]),
                      //         elevation: 2,
                      //       ),
                      //       // iconStyleData: const IconStyleData(
                      //       //   icon: Icon(
                      //       //     Icons.arrow_forward_ios_outlined,
                      //       //   ),
                      //       //   iconSize: 14,
                      //       //   iconEnabledColor: Colors.yellow,
                      //       //   iconDisabledColor: Colors.grey,
                      //       // ),
                      //       dropdownStyleData: DropdownStyleData(
                      //         maxHeight: 200,
                      //         width: 300,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(14),
                      //           color: Colors.white,
                      //         ),
                      //         offset: const Offset(-20, 0),
                      //         scrollbarTheme: ScrollbarThemeData(
                      //           radius: const Radius.circular(40),
                      //           thickness: MaterialStateProperty.all(6),
                      //           thumbVisibility:
                      //               MaterialStateProperty.all(true),
                      //         ),
                      //       ),
                      //       menuItemStyleData: const MenuItemStyleData(
                      //         height: 60,
                      //         padding: EdgeInsets.only(left: 14, right: 14),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 5, right: 5),
                      //   child: DropdownButtonHideUnderline(
                      //     child: DropdownButton2<String>(
                      //       isExpanded: true,
                      //       hint: const Row(
                      //         children: [
                      //           SizedBox(
                      //             width: 1,
                      //           ),
                      //           Expanded(
                      //             child: Text('Danh Mục'),
                      //             //     child: Icon(
                      //             //   Icons.account_tree,
                      //             // )
                      //           ),
                      //         ],
                      //       ),
                      //       items: items
                      //           .map((String item) => DropdownMenuItem<String>(
                      //                 value: item,
                      //                 child: Text(
                      //                   item,
                      //                   style: const TextStyle(
                      //                     fontSize: 14,
                      //                     fontWeight: FontWeight.bold,
                      //                     color: Colors.black,
                      //                   ),
                      //                   overflow: TextOverflow.ellipsis,
                      //                 ),
                      //               ))
                      //           .toList(),
                      //       value: selectedValue,
                      //       onChanged: (value) {
                      //         // setState(() {
                      //         //   selectedValue = value;
                      //         // });
                      //       },
                      //       buttonStyleData: ButtonStyleData(
                      //         height: 40,
                      //         width: 100,
                      //         padding:
                      //             const EdgeInsets.only(left: 14, right: 14),
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(14),
                      //             // border: Border.all(
                      //             //   color: Colors.black26,
                      //             // ),
                      //             color: Colors.blue[300]),
                      //         elevation: 2,
                      //       ),
                      //       // iconStyleData: const IconStyleData(
                      //       //   icon: Icon(
                      //       //     Icons.arrow_forward_ios_outlined,
                      //       //   ),
                      //       //   iconSize: 14,
                      //       //   iconEnabledColor: Colors.yellow,
                      //       //   iconDisabledColor: Colors.grey,
                      //       // ),
                      //       dropdownStyleData: DropdownStyleData(
                      //         maxHeight: 200,
                      //         width: 300,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(14),
                      //           color: Colors.white,
                      //         ),
                      //         offset: const Offset(-20, 0),
                      //         scrollbarTheme: ScrollbarThemeData(
                      //           radius: const Radius.circular(40),
                      //           thickness: MaterialStateProperty.all(6),
                      //           thumbVisibility:
                      //               MaterialStateProperty.all(true),
                      //         ),
                      //       ),
                      //       menuItemStyleData: const MenuItemStyleData(
                      //         height: 60,
                      //         padding: EdgeInsets.only(left: 14, right: 14),
                      //       ),
                      //     ),
                      //   ),
                      // ),
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
                              // style: ElevatedButton.styleFrom(
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(50))),
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return buildFilter(context);
                                    });
                              },
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
                  height: 630,
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
