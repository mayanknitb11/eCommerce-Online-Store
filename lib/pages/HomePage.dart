import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/animation/ScaleRoute.dart';
import 'package:flutter_chat_demo/pages/SignInPage.dart';
import 'package:flutter_chat_demo/widgets/shopsWidget.dart';
import 'package:flutter_chat_demo/widgets/BottomNavBarWidget.dart';
import 'package:flutter_chat_demo/widgets/SearchWidget.dart';

class HomePage extends StatefulWidget {
  // final String currentUserId;
  // HomePage({Key key, @required this.currentUserId}) : super(key: key);

  @override
  _HomePageState createState() =>
      _HomePageState(); //currentUserId: currentUserId);
}

class _HomePageState extends State<HomePage> {
//  _HomePageState({Key key, @required this.currentUserId});

  /*final String currentUserId;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  bool isLoading = false;

  Future<Null> handleSignOut() async {
    this.setState(() {
      isLoading = true;
    });

    await FirebaseAuth.instance.signOut();
    await googleSignIn.disconnect();
    await googleSignIn.signOut();

    this.setState(() {
      isLoading = false;
    });

    Navigator.push(context, ScaleRoute(page: SignInPage()));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Row(
          children: [
            SizedBox(
              width: 90,
            ),
            Text(
              "CO-NEAR",
              style: TextStyle(
                  color: Color(0xFF3a3737),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "SHOPS",
              style: TextStyle(
                  color: Colors.orange[500],
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {
                Navigator.push(context, ScaleRoute(page: SignInPage()));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            ShopsWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
