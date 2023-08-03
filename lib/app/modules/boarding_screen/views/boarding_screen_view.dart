import 'package:flutter/material.dart';

import 'package:send_off/app/modules/boarding_screen_2/views/boarding_screen_2_view.dart';

class BoardingScreenView extends StatelessWidget {
  const BoardingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/boardingscreen_image.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Content
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Welcome to Sendoff',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.07),
                  SizedBox(
                    width: width * 0.8,
                    height: height * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add functionality for the button here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BoardingScreen2View()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4CD964),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text(
                        'Get Help',
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
