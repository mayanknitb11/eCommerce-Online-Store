import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_chat_demo/animation/ScaleRoute.dart';
import 'package:flutter_chat_demo/login.dart';
import 'package:flutter_chat_demo/pages/SignInPage.dart';
import 'package:flutter_chat_demo/screens/hospital.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';

    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Consumers Help',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.orange[500]),
      body: Container(
        color: Colors.white10,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20, right: 0, top: 100, bottom: 30),
        child: Column(
          children: [
            Container(
              height: 100,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/img/help.png",
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Platform For Consumers",
              style: TextStyle(
                  color: Colors.orange[500],
                  fontFamily: defaultFontFamily,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              child: Container(
                width: 230,
                height: 100,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/menus/ic_food_express.png",
                ),
              ),
              onTap: () {
                Navigator.push(context, ScaleRoute(page: SignInPage()));
              },
            ),
            InkWell(
              child: Container(
                width: 230,
                height: 100,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/img/hospital.jpg",
                ),
              ),
              onTap: () {
                Navigator.push(context, ScaleRoute(page: Hospital()));
              },
            ),
            InkWell(
              child: Container(
                width: 330,
                height: 140,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/employee.jpg",
                ),
              ),
              onTap: () {
                Navigator.push(context, ScaleRoute(page: LoginScreen(title: 'Employee Status')));
              },
            )
          ],
        ),
      ),
    );
  }
}
