import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  var isDark = false;

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
              },
              activeColor: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}