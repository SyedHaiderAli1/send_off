import 'package:flutter/material.dart';

import 'app/modules/boarding_screen/views/boarding_screen_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        useMaterial3: true,
      ),
      home: const BoardingScreenView(),
    );
  }
}
