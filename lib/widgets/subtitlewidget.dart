import 'package:flutter/material.dart';

class subtitilewidget extends StatelessWidget {
  const subtitilewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 150,
          width: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 10, 32, 107)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 5, bottom: 10),
              child: Text("Smartest Way To \n \ \ \ \ \ \ \ Eat Out",
              style: TextStyle(
    color: Colors.white,
    fontSize: 23,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold
              ),), ),
            Text("**Table reservation in within seconds with discounts on all restaurants!**",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
            ),)
            ],)),

        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 150,
          width: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage("asset/card.png"))
          ),),
      ],),);
  }
}

