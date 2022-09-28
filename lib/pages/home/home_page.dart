import 'package:flutter/material.dart';
import 'package:flutter_app_sale/pages/home/home_food_page.dart';
import 'package:flutter_app_sale/utils/colors.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    HomeFoodPage(),
    Container(child: Center( child: Text("Next Page"))),
    Container(child: Center( child: Text("Next next Page"))),
    Container(child: Center( child: Text("Next next next Page"))),

  ];
  void onTapNav(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.amberAccent ,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTapNav,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'home',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.archive,),
            label: 'history',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'me',
          ),

        ],
      ),

    );
  }
}
