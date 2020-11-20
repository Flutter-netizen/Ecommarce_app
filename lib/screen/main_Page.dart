import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommarce_app/extra/Colors.dart';
import 'package:ecommarce_app/screen/account_screen.dart';
import 'package:ecommarce_app/screen/card_screen.dart';
import 'package:ecommarce_app/screen/homePage.dart';
import 'package:ecommarce_app/screen/wishlist_screen.dart';
import 'package:ecommarce_app/widget/drawerMenu.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';


class MainPage extends StatefulWidget {
  static const String id="mainpage";
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _indexPage= 0;
  final pageOptions=[
    HomePage(),
    WishListScreen(),
    CartScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MenuDrawer(),
      body: pageOptions[_indexPage],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.greenAccent,
        buttonBackgroundColor: Colors.transparent,
        animationCurve: Curves.easeOutExpo,
        index: 0,
        items: <Widget>[
          Items(
            icon: Icons.home,
            caption: "Home",
          ),

          Items(
            icon:Icons.favorite_border,
            caption: "WishList",
          ),

          Items(
            icon:Icons.shopping_cart,
            caption: "Cart",
          ),

          Items(
            icon:Icons.account_circle,
            caption: "Accounts",
          ),

        ],
        onTap: (int index){
          setState(() {
            _indexPage=index;
          });
        },
      ),
    );
  }
}

class Items extends StatelessWidget {

  final IconData icon;
  final String caption;
  Items({this.icon,this.caption});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: 28,color: iconColor),
        Text(caption,style: TextStyle(color: iconColor,fontSize: 16,fontWeight: FontWeight.w600),)
      ],
    );
  }
}
