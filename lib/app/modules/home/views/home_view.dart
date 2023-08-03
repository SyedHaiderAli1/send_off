import 'package:flutter/material.dart';

import 'package:send_off/widgets/ui/drawer.dart';

import '../../../../widgets/ui/homecards.dart';
import '../../../../widgets/ui/searchbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey, // Assign the GlobalKey to the Scaffold
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFF0F0F0),
          title: const Text('Product Categories',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ), // Drawer icon
            onPressed: () {
              // Implement the functionality to open the drawer here
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: height * 0.033),
              buildSearchBar(),
              SizedBox(height: height * 0.033),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'Funeral Packages',
              ),
              SizedBox(height: height * 0.033),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'Funeral Policies',
              ),
              SizedBox(height: height * 0.033),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'Help with Claims',
              ),
              SizedBox(height: height * 0.033),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'Catering',
              ),
              SizedBox(height: height * 0.033),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'Flowers',
              ),
              SizedBox(height: height * 0.033),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'Transportation',
              ),
              SizedBox(height: height * 0.033),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'Private Cemetries',
              ),
              SizedBox(height: height * 0.033),
              CardTileHome(
                rightIcon: Icons.arrow_forward_ios_rounded,
                title: 'Other Products',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
