import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  var isDark = false;

@override
  void initState() {
    isDark = Get.isDarkMode;
    super.initState();
  }

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
            child: Center(
              child: Text('Drawer Header'),
            ),
          ),
          ListTile(
            leading: const Text(
              "Change Theme",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: Switch(
              value: isDark,
              onChanged: (value) {
                setState(() {
                  isDark = value;
                });
              Get.changeTheme(isDark ? ThemeData.dark(): ThemeData.light());  
              },
              activeColor: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}