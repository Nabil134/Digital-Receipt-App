import 'package:digital_receipt_app/view/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: SplashScreen(),
    );
  }
}
/*
 showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Add Receipt'),
                content: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _idController,
                        decoration: InputDecoration(
                          labelText: "ID",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter ID';
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        controller: _idController,
                        decoration: InputDecoration(
                          labelText: "Date",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Date';
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        controller: _idController,
                        decoration: InputDecoration(
                          labelText: "Total Amount",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a total amount';
                          } else {
                            return null;
                          }
                        },
                      )
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          widget.receipts.add(Receipt(
                            id: _idController.text,
                            date: _dateController.text,
                            totalAmount:
                                double.parse(_totalAmountController.text),
                          ));
                        });
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Add'),
                  ),
                ],
              ),
            );
*/