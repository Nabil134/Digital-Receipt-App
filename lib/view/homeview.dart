import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /*first portion start here*/
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: Center(
                  child: Text('Employee'),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Center(
                  child: Text('Products'),
                ),
              ),
            ],
          ),
          /*first portion end here*/
          /*second portion start here*/
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Center(
              child: Text('GST'),
            ),
          ),
          /*second portion end here*/
        ],
      ),
    );
  }
}
