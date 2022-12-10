import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_booking_app/pages/body.dart';
import 'package:table_booking_app/pages/profile.dart';
import 'package:table_booking_app/pages/restaurantslist.dart';
import 'package:table_booking_app/pages/wishlist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<RestaurantsList> favourites =[];
   int open = 0;
  void close (int index){
    setState(() {
      open = index;
    });
  }


  List<Widget> _widgetOption(){
    return [
      Body(),
      Wishlist(favouritedRestataurant: favourites),
      Profile(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: _widgetOption()[open],
        bottomNavigationBar: 
         BottomNavigationBar(
          showUnselectedLabels: false,
            currentIndex: open, 
            onTap: close,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,        
            items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home'),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_rounded),
                  label: 'Wishlist'),
                      BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Profile')
            ]),

 );
  }}