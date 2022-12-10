import 'package:flutter/material.dart';
import 'package:table_booking_app/pages/menupage.dart';
import 'package:table_booking_app/pages/reservationpage.dart';
import 'package:table_booking_app/pages/restaurantslist.dart';

class DetailPage extends StatefulWidget {
  final int HotelId;
  const DetailPage({Key? key, required this.HotelId}) : super(key: key);
  @override
  State<DetailPage> createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    List<RestaurantsList> HotelList = RestaurantsList.HotelList;
     bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
     }
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
       leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 25,)),
      title: Text("Restaurant Details",
      style: TextStyle(color: Colors.black,
      fontSize: 23,
      fontWeight: FontWeight.w400
      )), ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 250,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black26,
              image: DecorationImage(image: AssetImage(HotelList[widget.HotelId].image),
              fit: BoxFit.cover ),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                      debugPrint('favorite');
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              bool isFavorited = toggleIsFavorated(
                                  HotelList[widget.HotelId].isFavorated);
                              HotelList[widget.HotelId].isFavorated =
                                  isFavorited;
                            });
                          },
                          icon: Icon(
                            HotelList[widget.HotelId].isFavorated == true
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.pinkAccent,
                            size: 38,
                          )),
                    ),),
                    ]),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    HotelList[widget.HotelId].name,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 35.0,
                                    ),),
                                ElevatedButton(onPressed: () {
                                Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => MenuPage(),));
                                }, child: Text("Menu",
                                style: TextStyle(color: Colors.black,fontSize: 20),)),
                                ],),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60,right: 10),
                                    child: Text(
                                      HotelList[widget.HotelId].rating,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),),
                                  ),
                                    Text(HotelList[widget.HotelId].ratingNumber,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300)),
                                      Icon(
                                        Icons.star,
                                          size: 30.0,
                                          color: Colors.yellow,
                                      ),])
                                    ],),
                                  ),
                                        SizedBox(height: 20,),
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Text(HotelList[widget.HotelId].address,
                                                style: TextStyle(
                                                  fontSize: 25,
                                                ),),
                                                SizedBox(height: 10,),
                                                Text(HotelList[widget.HotelId].addressLine,
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black54
                                          ),)
                                      ],),
                                    ),
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Text(HotelList[widget.HotelId].RestaurantInfo,
                                                style: TextStyle(
                                                  fontSize: 25
                                                ),),
                                                SizedBox(height: 10,),
                                                Text(HotelList[widget.HotelId].RestaurantInfoLine,
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black54
                                                ),)
                                            ],),
                                          ),
                                          SizedBox(height: 20,),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Text(HotelList[widget.HotelId].OpeningHours,
                                                style: TextStyle(
                                                  fontSize: 25
                                          ),),
                                                SizedBox(height: 10,),
                                                Text(HotelList[widget.HotelId].OpeningHoursLine,
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black54
                                                ),)
                                            ],),
                                  ),
                                    SizedBox(height: 20,),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ReservationPage(),));
                                          },
                                          child: Container(
                                            height: 60,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.circular(25),),
                                              child: Center(
                                                child: Text(
                                                  'Make Reservation',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,),),
                                                    ),)),
                                                    SizedBox(height: 30,)
                                                    ]),
                                ) ); }}