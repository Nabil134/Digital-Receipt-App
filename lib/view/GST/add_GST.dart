import 'dart:io';
import 'dart:typed_data';

import 'package:digital_receipt_app/view/GST/gst_list.dart';

import 'package:digital_receipt_app/view/GST/Model/GSTModel.dart';
import 'package:flutter/material.dart';

class AddGST extends StatefulWidget {
  @override
  State<AddGST> createState() => _AddGSTState();
}

class _AddGSTState extends State<AddGST> {
  @override
  final _formkey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _gst_noController = TextEditingController();

  addNewReceipt(context) {
    setState(() {
      Navigator.pop(context);
      gst.add({
        "name": _nameController.text,
        "gstNo": _gst_noController.text,
      });
      _nameController.clear();
      _gst_noController.clear();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GSTList(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Add GST'),
                content: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: "Name",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Name';
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        controller: _gst_noController,
                        decoration: InputDecoration(
                          labelText: "GST",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter GST No:';
                          } else {
                            return null;
                          }
                        },
                      ),
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
                      addNewReceipt(context);
                    },
                    child: Text('Add'),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
