import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
  //navigate Bottom Bar
  int _selectedIndex =0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
//pages
final List<Widget> _pages =[
  //Shop page
  const ShopPage(),

  //cart page
  const CartPage(),
];
//   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index)
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        leading: Builder(
          builder: (context) =>
           IconButton(
              icon:const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              onPressed:(){
                Scaffold.of(context).openDrawer();
              },
           ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[500],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                 //logo
            DrawerHeader(child: Image.asset('lib/images/sneakers1.gif'),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            // child: Divider(color: Colors.black,),
            ),

            //drarwer 
            //home buttuon
            const Padding(
              padding: EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text('Home',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), 
              ),
            ),
            //Profile Button
            const Padding(
              padding: EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.account_box_rounded,
                color: Colors.white,),
                title: Text('Profile',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), 
              ),
            ),

            // about Buton
            const Padding(
              padding: EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(Icons.info,
                color: Colors.white,),
                title: Text('About',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), 
              ),
            ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(left:25.0,bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout,
                color: Colors.white,),
                title: Text('Log Out',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), 
              ),
            ),

           

          ],),
      ),
      body: _pages[_selectedIndex]
    );
  }
}
