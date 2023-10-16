import 'package:flutter/material.dart';
import 'package:seosoftsite_demo/common/constants.dart';
import '../common/widgets/home_widget.dart';
import '../common/widgets/nav_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SeosoftSite Demo'),
      ),
      drawer: const NavDrawer(),
      body: const HomeWidget(),
      bottomNavigationBar: BottomNavigationBar(items: bottomNavItems),
    );
  }
}




