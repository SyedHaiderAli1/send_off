import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:send_off/widgets/ui/drawer.dart';

import '../../../../widgets/ui/bottomnavigation.dart';
import '../../../../widgets/ui/homecards.dart';
import '../../../../widgets/ui/searchbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.sizeOf(context).height;
    var width= MediaQuery.sizeOf(context).width;
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey, // Assign the GlobalKey to the Scaffold
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFF0F0F0),
          title:const Text('Product Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize:24,color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
            icon:const Icon(Icons.menu,color: Colors.black,), // Drawer icon
            onPressed: () {
              // Implement the functionality to open the drawer here
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer:const DrawerWidget(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:const EdgeInsets.symmetric(vertical: 8.0),
                child: buildSearchBar(),
              ),
              SizedBox(height: height*0.02),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'I need to arrange a Funeral',

              ),
              SizedBox(height:height*0.02),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'I need a funeral policy',

              ),
              SizedBox(height:height*0.02),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'I need a funeral policy',

              ),
              SizedBox(height:height*0.02),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'I need a funeral policy',

              ),
              SizedBox(height:height*0.02),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'I need a funeral policy',

              ),
              SizedBox(height:height*0.02),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'I need some advice',

              ),
              SizedBox(height:height*0.02),
              CardTileHome(
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
    );
  }
}

