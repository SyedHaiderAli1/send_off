
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
         const DrawerHeader(

            decoration: BoxDecoration(
              color: Colors.blue,
            ),
           child: Text('Drawer Header'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Add functionality for the Home menu item here
              Navigator.pop(context); // Closes the drawer after selection
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Add functionality for the Settings menu item here
              Navigator.pop(context); // Closes the drawer after selection
            },
          ),
        ],
      ),
    );
  }
}

