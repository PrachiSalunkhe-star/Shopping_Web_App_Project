import 'package:flutter/material.dart';
import 'package:newapp/Auth/LoginPage.dart';
import 'package:newapp/pages/Contact.dart';
import 'package:newapp/pages/Product.dart';
import 'package:newapp/pages/home_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(5), // for all side spacing or also use ltrb
        children: [
          UserAccountsDrawerHeader(
            accountName:Text('Prachi'),
            accountEmail: Text('prachisalunkhe877@gmail.com'),
            currentAccountPicture: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 211, 143, 122),
            child: Icon(
                Icons.person,
                size: 40,
                color:  Colors.black26,
             ),
             ),
             ),
             
             ListTile(
              leading: Icon(Icons.home),
              title: Text('HOME'),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder:(context)=> HomePage()));
              },
             ),
             ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('PRODUCT'),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder:(context)=> ProductPage()));
              },
             ),
             ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text('CONTACT'),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder:(context)=> ContactPage()));
              },
             ),
             Divider(),
             ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log Out '),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder:(context)=> LoginPage()));
              },
             ),
        ],
      ),
    );
  }
}