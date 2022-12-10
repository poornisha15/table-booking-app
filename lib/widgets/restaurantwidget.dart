import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:table_booking_app/pages/DetailScreen.dart';
import 'package:table_booking_app/pages/restaurantslist.dart';

class Restaurantwidget extends StatefulWidget {
  const Restaurantwidget({super.key, required this.index, required this.HotelList});

   final int index;
  final List<RestaurantsList> HotelList;

  @override
  State<Restaurantwidget> createState() => _RestaurantwidgetState();
}

class _RestaurantwidgetState extends State<Restaurantwidget> {
  var index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     List<RestaurantsList> HotelList = RestaurantsList.HotelList;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: DetailPage(
                  HotelId: HotelList[index].HotelId,
                ),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80.0,
        padding: const EdgeInsets.only(left: 10, top: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 80.0,
                    child:
                    Image.asset(HotelList[widget.index].image),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        HotelList[widget.index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                r'$' + HotelList[widget.index].rating.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}