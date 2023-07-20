import 'package:bellsi_app/Home.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void onTapshowhide() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  Future<void> getUserOrder() {
    return Future.delayed(Duration(seconds: 2), () => HomePage());
  }

  void onSignInClick() {
    setState(() {
      _user.text.length == 10 ? (_userInvalid = false) : (_userInvalid = true);
      _pass.text.length >= 6 ? (_passInvalid = false) : (_passInvalid = true);
      !_userInvalid && !_passInvalid
          ? (Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage())))
          : null;
    });
  }

  bool _showPass = false;
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();
  String uservalid = '';
  var _userEr = "Number Phone incorrect";
  var _passEr = "Password incorrect";
  var _userInvalid = false;
  var _passInvalid = false;
  bool _checkInvalid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/newbg.jpg"),
                fit: BoxFit.cover)),
        padding: EdgeInsets.only(left: 20, top: 30, right: 10),
        constraints: BoxConstraints.expand(),
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      //margin: EdgeInsets.only(bottom: 40),
                      // decoration: BoxDecoration(
                      //     shape: BoxShape.circle, color: Colors.grey[200]),
                      // padding: EdgeInsets.all(15),
                      width: double.infinity,
                      height: 100,
                      child: Image(
                          image: NetworkImage(
                              'https://app.bellsi.vn/assets/logo-bellsi.4672689c.png'))),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: GradientText(
                        "Welcom to BELLSI",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic),
                        colors: [
                          Colors.blue,
                          Colors.cyanAccent,
                          Colors.teal,
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: TextField(
                      controller: _user,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_android_outlined),
                          border: OutlineInputBorder(),
                          labelText: "Number Phone",
                          errorText: !_userInvalid ? null : _userEr,
                          // errorStyle: TextStyle(color: Colors.red),
                          labelStyle:
                              TextStyle(color: Colors.blue, fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        TextField(
                          controller: _pass,
                          obscureText: !_showPass,
                          style: TextStyle(fontSize: 16),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock_outline),
                              errorText: !_passInvalid ? null : _passEr,
                              labelText: "PassWord",
                              labelStyle:
                                  TextStyle(color: Colors.blue, fontSize: 20)),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: GestureDetector(
                              onTap: onTapshowhide,
                              child: Container(
                                child: Icon(_showPass
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                          value: _checkInvalid,
                          onChanged: (bool? value) {
                            setState(() {
                              _checkInvalid = value!;
                            });
                          },
                        ),
                        Text('Lưu Đăng Nhập')
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: onSignInClick,
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Container(
                                child: Text(
                                  'NEW USER?',
                                ),
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              )
                            ],
                          )),
                          Container(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "FORGOT PASSWORD",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
