import 'dart:async';

import 'package:digital_receipt_app/constants.dart';
import 'package:digital_receipt_app/view/Home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*first portion start here*/
              Center(
                child: Image.asset(
                  height: size.height * 0.4,
                  width: size.width * 0.4,
                  "images/images.png",
                ),
              ),

              /*first portion end here*/
              /*second portion start here*/
              const Text(
                'Digital Receipt App',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              /*second portion end here*/
            ],
          ),
        ));
  }
}
