import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_booking_app/pages/restaurantslist.dart';
import 'package:table_booking_app/widgets/restaurantwidget.dart';

class Wishlist extends StatefulWidget {
  
  final List<RestaurantsList> favouritedRestataurant;
  
  const Wishlist({super.key, required this.favouritedRestataurant});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Text("My Wishlist",
      style: TextStyle(color: Colors.black,
      fontSize: 23,
      fontWeight: FontWeight.w400
      )),
    ),
    body: widget.favouritedRestataurant.isEmpty 
    ?Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            child: Image.asset("asset/favourited.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(" Add Your Favourite Restaurants",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),)
        ],
      ),
    ) 
    :Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 30),
      height: size.height*.5,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: widget.favouritedRestataurant.length,
        itemBuilder: (BuildContext context, int index){
          return Restaurantwidget(index: index,HotelList: widget.favouritedRestataurant);
        }),
    ),
    );
  }
}