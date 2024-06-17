import 'package:flutter/material.dart';
import 'package:flutter_application_pizza/components/button.dart';
import 'package:flutter_application_pizza/components/food_item.dart';
import 'package:flutter_application_pizza/models/food.dart';
import 'package:flutter_application_pizza/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(
      name: 'Ognivo dragona',
      price: '250',
      imagePath: 'lib/images/sushi-3.png',
      rating: '5.5',
    ),
    Food(
      name: 'Bambuk',
      price: '380',
      imagePath: 'lib/images/sushi-4.png',
      rating: '5.1',
    ),
    Food(
      name: 'Yaiki panda',
      price: '180',
      imagePath: 'lib/images/sushi-1.png',
      rating: '10/10',
    ),
    Food(
      name: 'Kimono satana',
      price: '480',
      imagePath: 'lib/images/sushi-2.png',
      rating: '11/10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Zhratva',
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '32% salo epta',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    MyButton(
                      text: 'Nu sho?',
                      onTap: () {},
                    ),
                  ],
                ),
                Image.asset(
                  'lib/images/sushi-2.png',
                  height: 100,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Sho pozhrat'",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10.0),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodItem(
                food: foodMenu[index],
              ),
            ),
          ),

          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
