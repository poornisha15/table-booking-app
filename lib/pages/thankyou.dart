import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_booking_app/pages/body.dart';
import 'package:table_booking_app/pages/homescreen.dart';

class ThankYou extends StatefulWidget {
  const ThankYou({super.key});
  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("asset/thankyoucartton.jpg"),
          Center(child: Text("Thank You",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700
          ),)),
          Text("Successfully Booked Your Table",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400
          ),),
          SizedBox(
            height: 100,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => HomeScreen(),));
            },
             child: Text("Back To Home",
             style: TextStyle(
              fontSize: 20
             ),))
          ],
      ),
    );
  }
}