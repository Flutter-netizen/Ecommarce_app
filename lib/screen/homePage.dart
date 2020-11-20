import 'package:ecommarce_app/widget/drawerMenu.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class HomePage extends StatefulWidget {
  static const String id="homepage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Future<Null> getRefresh()async{
    await Future.delayed(Duration(seconds: 3));
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(OMIcons.menu,size: 30,),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
     // drawer: MenuDrawer(),
      //drawerScrimColor: Colors.red,
    );
  }
}
