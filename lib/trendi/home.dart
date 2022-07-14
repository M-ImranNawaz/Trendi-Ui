import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/trendi/categories_page.dart';
import 'package:ui/trendi/home_page.dart';
import 'package:ui/trendi/profile_page.dart';
import 'package:ui/trendi/search_page.dart';
import 'package:ui/trendi/wishlist_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItemIndex = 0;
  final widgetOptions = [
    HomePage(),
    CategoriesPage(),
    SearchPage(),
    WishlistPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          children: [
            buildNavBarItem('assets/home.svg', "Home", 0),
            buildNavBarItem('assets/vuesax-linear-shop.svg', "Categories", 1),
            buildNavBarItem('assets/search-normal.svg', "Search", 2),
            buildNavBarItem('assets/heart.svg', "Wishlist", 3),
            buildNavBarItem('assets/vuesax-linear-user.svg', "Profile", 4),
          ],
        ),
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedItemIndex),
      ),
    );
  }

  buildNavBarItem(String icon, String data, int index) {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      decoration: index == _selectedItemIndex
          ? const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  width: 4,
                  color: Color(0xFFff65c5),
                ),
              ),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey,
              //     offset: Offset(0.0, 1.0), //(x,y)
              //     blurRadius: 6.0,
              //   ),
              // ],
            )
          : null,
      // child: GestureDetector(
      //   onTap: () {
      //     setState(() {
      //       _selectedItemIndex = index;
      //     });
      //   },
      child: TextButton(
        onPressed: () {
          setState(() {
            _selectedItemIndex = index;
          });
        },
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                icon,
                color: index == _selectedItemIndex
                    ? Color(0xFFff65c5)
                    : Colors.black,
              ),
              Text(
                data,
                style: TextStyle(color: Colors.black, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}


//bottom nav bar
/* BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/home.svg'),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
      ),*/