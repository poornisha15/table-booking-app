import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:table_booking_app/pages/DetailScreen.dart';
import 'package:table_booking_app/pages/restaurantslist.dart';
import '../widgets/tablewidget.dart';
import '../widgets/subtitlewidget.dart';

class Body extends StatefulWidget {
  const Body({super.key});
  @override
  State<Body> createState() => _BodyState();
}
class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    int selectedIndex = 0;
    List<RestaurantsList> HotelList = RestaurantsList.HotelList;

     bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
     }
    return Scaffold(
         appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.search_rounded, color: Colors.black54,size: 25,),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search Restaurants here",
            hintStyle: TextStyle(fontSize: 18,color: Colors.black54),
            border: InputBorder.none,
          ),) ),
          
          body: SingleChildScrollView(
            child: Column(
              children: [
                tablewidget(),
                SizedBox(
                  height: 10),
                  subtitilewidget(),
                  SizedBox(
                  height: 10),
                Container(
                  height: 40,
                  width: 400,
                  child: Text("Restaurants",
                  style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                ),

                SizedBox(
            height: size.height * .33,
            child: ListView.builder(
                itemCount: HotelList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: DetailPage(
                                HotelId: HotelList[index].HotelId,
                              ),
                              type: PageTransitionType.fade));
                    },
                    child: Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 20,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    bool isFavorited = toggleIsFavorated(
                                        HotelList[index].isFavorated);
                                    HotelList[index].isFavorated = isFavorited;
                                  });
                                },
                                icon: Icon(
                                  HotelList[index].isFavorated == true
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.pinkAccent
                                ),
                                iconSize: 30,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 15,
                            right: 15,
                            top: 40,
                            bottom: 40,
                            child: Image.asset(HotelList[index].image),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  HotelList[index].name,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              bottom: 5,
                              left: 10,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 28,
                                    color: Colors.yellow
                                    ),
                                  Text(
                                     HotelList[index].ratingNumber,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                ],
                              ))
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  );
                }),
          ),
               
                  ]),),);
  }
}

