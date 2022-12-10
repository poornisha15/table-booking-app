import 'package:flutter/material.dart';

class tablewidget extends StatelessWidget {
  const tablewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 2,right: 2),
          height: 250,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black26,
            image: DecorationImage(image: AssetImage("asset/table.jpg"),
            colorFilter: ColorFilter.mode(Colors.black54,BlendMode.darken),
            fit: BoxFit.cover ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Hi, Pooja!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Where would you like to reserve your table?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(
              height: 5,
            )
          ],),
        ),
      ],
    );
  }
}