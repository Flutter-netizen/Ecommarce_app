import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class MenuDrawer extends StatefulWidget {
  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      color: Colors.white,
      child: Drawer(

        elevation: 5,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            Container(
              height: 150,

              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/p.jpg'),
                      radius: 30,
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Faisal Khan',style: TextStyle(fontSize: 20,fontFamily: 'Brand-Bold')),
                        SizedBox(width: 5),
                        Text('01833548800',style: TextStyle(fontSize: 16,color: Colors.black54),),
                        SizedBox(height: 10),

                      ],
                    ),
                  ],
                ),
              ),
            ),

            ListTile(
              focusColor: Colors.white,
              leading: Icon(OMIcons.accountCircle),
              title: Text('Accounts',style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: (){
                Navigator.pop(context);
              },
            ),Divider(),
            ListTile(
              leading: Icon(OMIcons.addShoppingCart),
              title: Text('Cart',style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(OMIcons.favorite),
              title: Text('WishList',style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(OMIcons.contactSupport),
              title: Text('Support',style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: (){
                Navigator.pop(context);
              },
            ),Divider(),
            ListTile(
              leading: Icon(OMIcons.info),
              title: Text('About',style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.w600)),
              onTap: (){
                Navigator.pop(context);
              },
            ),Divider(),
          ],
        ),
      ),
    );
  }
}
