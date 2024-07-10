import 'package:flutter/material.dart';
import 'package:nike_app/components/bottom_nav_bar.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    //this selectd index is to control bottom nav bar.
        int _selectedIndex = 0;

        //this method will uodate our selected index when user taps on bottom bar.
        void navitageBottomBar(int index){
          setState((){
            _selectedIndex = index;
          }
          );
        }

        //pages to display
        final List <Widget> _pages = [
        //shop page
         const ShopPage(),

         //cart page
         const CartPage(),
        ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 229, 229),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navitageBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Padding(
                padding:  EdgeInsets.only(left: 12.0),
                child:  Icon(
                Icons.menu,
                color: Colors.black,
                ),
              ),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //loop
            DrawerHeader(
              child: Image.asset(
                'lib/images/nikelogo.png',
              color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),
            //other pages
            const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home, 
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),
          const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info, 
                  color: Colors.white,
                ),
                title: Text(
                  'About',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),
          SizedBox(height: 350,),
          const Padding(
              padding: const EdgeInsets.only(left: 25.0,),
              child: ListTile(
                leading: Icon(
                  Icons.logout, 
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    ),
      body: _pages[_selectedIndex],
    );
  }
}