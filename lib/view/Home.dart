import 'package:digital_receipt_app/constants.dart';
import 'package:digital_receipt_app/view/side_nav.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SideNav(),
      ),
      appBar: AppBar(
        title: Text('Digtal Receipt App'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: backgroundColor,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              pageIdx = index;
            });
          },
          currentIndex: pageIdx,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  size: 25,
                ),
                label: 'Add Employee'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.document_scanner,
                  size: 25,
                ),
                label: 'GST'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.production_quantity_limits_sharp,
                  size: 25,
                ),
                label: 'Add Products'),
          ]),
      body: Center(
        child: pageindex[pageIdx],
      ),
    );
  }
}
