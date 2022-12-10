import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:table_booking_app/pages/thankyou.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {

DateTime _PickedDate = DateTime.now();
TimeOfDay _PickedTime = TimeOfDay.now();

String get getDate{
  return DateFormat("dd-MM-yyyy").format(_PickedDate);
}
String get getTime {
  final now = DateTime.now();
  final datetime = DateTime(now.year, now.month, now.day,
   _PickedTime.hour, _PickedTime.minute);
   return DateFormat("hh:mm a").format(datetime);
}
int currentvalue = 0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar:  AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 25,)),
      title: Text("Make your reservation",
      style: TextStyle(color: Colors.black,
      fontSize: 23,
      fontWeight: FontWeight.bold
      )),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10),
          Text("Select Type of Hall",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 10 ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               IconButton(
                onPressed: () {
          }, icon: Icon(Icons.local_drink_sharp,
          color: Colors.black54,
          size: 40,)),
           IconButton(onPressed: () {
          }, icon: Icon(Icons.no_drinks,
          color: Colors.black54,
          size: 40,)),],),
          SizedBox(
            height: 20),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 40),
                 child: Text("Alcohols",
                 style: TextStyle(
                  fontSize: 23,
              ),),
               ),
              Text(" Non - Alcohol",
           style: TextStyle(
            fontSize: 23,
          ),),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               IconButton(onPressed: () {
          }, icon: Icon(Icons.smoking_rooms_sharp,
          color: Colors.black54,
          size: 40,)),
           IconButton(onPressed: () {
          }, icon: Icon(Icons.smoke_free,
          color: Colors.black54,
          size: 40,)),],),
          SizedBox(
            height: 20),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 40),
                 child: Text("Smokers",
                 style: TextStyle(
                  fontSize: 23,
              ),),
               ),
              Text(" Non - Smokers",
           style: TextStyle(
            fontSize: 23,
          ),),
            ],),
          SizedBox(
            height: 20,),
           Container(
          decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black54,
              width: 2))),
              ),
              SizedBox(
                height: 10),
              Text("Number of People",
              style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 10),
          Container(
            child: NumberPicker(
              axis: Axis.vertical,
              itemHeight: 45,
              itemWidth: 45,
              minValue: 0, 
              maxValue: 20,
              itemCount: 3, 
              value: currentvalue, 
              onChanged: (v) {
                setState(() {
                  currentvalue = v;
                });
              },),
          ),
          SizedBox(
            height: 10),
           Container(
          decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black54,
              width: 2))),
              ),
              SizedBox(
                height: 10),
              Text("Date of Booking",
              style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
                height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ElevatedButton(
                      onPressed: () => openDaterPicker(),
                      child: Text("Pick Date",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                      ),)),
                  ),
                    SizedBox(
                      width: 20),
                    Text("Picked Date - $getDate",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                      ),),
                ],),
              SizedBox(
                height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ElevatedButton(
                      onPressed: () => openTimePicker(),
                      child: Text("Pick Time",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                      ),)),
                  ),
                    SizedBox(
                      width: 20),
                    Text("Picked Time - $getTime ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                      ),),
                ],),
                 SizedBox(
                height: 10),
                MaterialButton(
                  height: 40,
                  minWidth: 150,
                  color: Colors.red,
                  child: Text("Book Now",
                  style: TextStyle(
                    fontSize: 25
                  ),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThankYou(),));
                  },)
              ],
      ),
    ),
   );
  }

  Future <void> openDaterPicker() async{
    final PickedDate = await showDatePicker(
      context: context, 
      initialDate: _PickedDate, 
      firstDate: DateTime.now(), 
      lastDate: DateTime(2030, 12, 30));
      if (PickedDate != null){
        setState(() {
          _PickedDate = PickedDate;
        });}
  }

  Future <void> openTimePicker() async{
    final PickedTime = await showTimePicker(
      context: context, 
       initialTime: _PickedTime,
       );
      if (PickedTime != null){
        setState(() {
          _PickedTime = PickedTime;
        }); }
  }

}