import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/ui/cardtiles_bs2.dart';
import '../../home/views/home_view.dart';
import '../controllers/boarding_screen_2_controller.dart';

class BoardingScreen2View extends StatelessWidget {
  const BoardingScreen2View({super.key});

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.sizeOf(context).height;
    var width= MediaQuery.sizeOf(context).width;
    return MaterialApp(
      home: Scaffold(

        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'How can we help you Today?',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height*0.01),
                const Text(
                  'Please choose one of the following options',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height*0.1),
                CardTileWithIcons(
                  leftIcon: Icons.local_florist_rounded,
                  rightIcon: Icons.arrow_forward_ios_rounded,
                  title: 'I need to arrange a Funeral',

                ),
                SizedBox(height:height*0.03),
                CardTileWithIcons(
                  leftIcon: Icons.business,
                  rightIcon: Icons.arrow_forward_ios_rounded,
                  title: 'I need a funeral policy',

                ),
                SizedBox(height:height*0.03),
                CardTileWithIcons(
                  leftIcon: Icons.quiz_rounded,
                  rightIcon: Icons.arrow_forward_ios_rounded,
                  title: 'I need some advice',

                ),
                SizedBox(height:height*0.03),
                CardTileWithIcons(
                  leftIcon: Icons.shopping_cart,
                  rightIcon: Icons.arrow_forward_ios_rounded,
                  title: 'i need to talk to a Human',

                ),
                SizedBox(height:height*0.04),
                Padding(
                  padding: EdgeInsets.only(right: width*0.3,left:  width*0.3),
                  child: SizedBox(
                    height: height*0.05,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add functionality for the button here
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeView()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF0F0F0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text('See all options',style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

