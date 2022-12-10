import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Grill Chicken",
      "images":
          "asset/Foodimage1.jpg"
    },
    {
      "title": "Burger",
      "images":
          "asset/Foodimage2.jpg"
    },
    {
      "title": "Veg Pizza",
      "images":
          "asset/foodimage3.jpg"
    },
    {
      "title": "Chappathi",
      "images":
         "asset/foodimage4.jpg"
    },
    {
      "title": "Diet Plate",
      "images":
          "asset/Foodimage5.jpg"
    },
    {
      "title": "Mushroom Grill",
      "images":
          "asset/Foodimage6.jpg"
    },
    {
      "title": "Noodles",
      "images":
          "asset/Foodimage7.jpg"
    },
    {
      "title": "Bread Roll",
      "images":
          "asset/foodimage8.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
       leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 25,)),
      title: Text("Menu",
      style: TextStyle(color: Colors.black,
      fontSize: 23,
      fontWeight: FontWeight.bold
      )),
    ),
    body: GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 220,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Color.fromARGB(255, 231, 227, 215),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.asset(
                  "${gridMap.elementAt(index)['images']}",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                    ),
            ]))]));
  
      }));}}