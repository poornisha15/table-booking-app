import 'package:flutter/material.dart';

class RestaurantsList{
  late final int HotelId;
  late final String name;
  late final String image;
  late final String rating;
  late final String ratingNumber;
  late final String address;
  late final String addressLine;
  late final String RestaurantInfo;
  late final String RestaurantInfoLine;
  late final String OpeningHours;
  late final String OpeningHoursLine;
  late bool isFavorated;

  

  RestaurantsList(
    {
      required this.HotelId,
      required this.name,
      required this.image,
      required this.rating,
      required this.ratingNumber,
      required this.address,
      required this.addressLine,
      required this.RestaurantInfo,
      required this.RestaurantInfoLine,
      required this.OpeningHours,
      required this.OpeningHoursLine,
      required this.isFavorated,
      
    });

    // list of restaurants

    static List<RestaurantsList> HotelList = [
    RestaurantsList(
      HotelId: 0,
      name: "BBQ Nation",
      image: "asset/restaurant 1.jpg",
      rating: "Ratings:",
      ratingNumber: "4.8",
      isFavorated: false,
      address: "Address:",
      addressLine:"9, Reynolds Road, Cantonment,\n Tiruchirappalli, TamilNadu 620001, India",
      RestaurantInfo: "Restaurant Info:",
      RestaurantInfoLine: "8939836541 \n feedback@barbequenation.com",
      OpeningHours: "Opening Hours:",
      OpeningHoursLine: "11:30 am to 11:00 pm"
    ),
    RestaurantsList(
      HotelId: 1,
      name: "Sri Sangeethas",
      image: "asset/restaurant 2.jpg",
      rating: "Ratings:",
      ratingNumber: "5.0",
      isFavorated: false,
      address: "Address:",
      addressLine: "NO.10, CHENNAI BYPASS ROAD \n SANJEEVI NAGAR,TRICHY - 620 002,TAMILNADU,INDIA.",
      RestaurantInfo: "Restaurant Info:",
      RestaurantInfoLine: "9965591018\n feedback@srisangeethas.com",
      OpeningHours: "Opening Hours:",
      OpeningHoursLine: "07:00 am to 10.00 pm"
    ),
    RestaurantsList(
      HotelId: 2,
      name: "Dosa Village",
      image: "asset/restaurant 3.jpg",
      rating: "Ratings:",
      ratingNumber: "4.9",
      isFavorated: false,
      address: "Address:",
      addressLine: "6th CHENNAI BYPASS ROAD, Trichy, 620024,\n TamilNadu 620001, India",
      RestaurantInfo: "Restaurant Info:",
      RestaurantInfoLine: "910368233 \n feedback@dosavillage",
      OpeningHours: "Opening Hours:",
      OpeningHoursLine: "11:30 am to 11:00 pm"
    ),
    RestaurantsList(
      HotelId: 3,
      name: "A2B",
      image: "asset/restaurant 4.jpg",
      rating: "Ratings:",
      ratingNumber: "5.0",
      isFavorated: false,
      address: "Address:",
      addressLine: "Adyar Ananda Bhavan 7th Cross Salai Road,\n Tiruchirappalli 620018",
      RestaurantInfo: "Restaurant Info:",
      RestaurantInfoLine: "914442333333 \n care@aabsweets.com",
      OpeningHours: "Opening Hours:",
      OpeningHoursLine: "07:00 am to 10.00 pm"
    ),
    RestaurantsList(
      HotelId: 4,
      name: "Thalapakati",
      image: "asset/restaurant 5.jpg",
      rating: "Ratings:",
      ratingNumber: "4.5",
      isFavorated: false,
      address: "Address:",
      addressLine: "50/3, Karur Bye Pass Road, Melachinathamani,/n Near Chatram Bus Stand",
      RestaurantInfo: "Restaurant Info:",
      RestaurantInfoLine: "+918870007380 \n care@thalapakati.com ",
      OpeningHours: "Opening Hours:",
      OpeningHoursLine: "11.00 am-11.00 pm"
    ),
    
    ];
     //Get the favorated items
    static List<RestaurantsList> getFavoritedRestaurants() {
    List<RestaurantsList> _travelList = RestaurantsList.HotelList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

}