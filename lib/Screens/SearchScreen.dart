import 'package:bellsi_app/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class Page_2 extends StatelessWidget {
  const Page_2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text('Page_2'),
    );
  }
}

class _SearchState extends State<Search> {
  Widget buildnew() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page_2'),
      ),
      body: Container(
        // height: 700,
        // width: 300,
        color: Colors.yellowAccent,
        child: Text('tabed'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Screen'),
      ),
      body: Container(
        color: Colors.grey,
        child: Container(
          color: Colors.red,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => buildnew()));
            },
            child: Text('Tab'),
          ),
        ),
      ),
    );
  }
}
