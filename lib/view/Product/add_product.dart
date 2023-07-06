import 'dart:io';
import 'dart:typed_data';

import 'package:digital_receipt_app/view/Product/Model/productModel.dart';
import 'package:digital_receipt_app/view/Product/product_list.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  PlatformFile? _imageFile;
  Future<void> _pickImage() async {
    try {
      // Pick an image file using file_picker package
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      // If user cancels the picker, do nothing
      if (result == null) return;

      // If user picks an image, update the state with the new image file
      setState(() {
        _imageFile = result.files.first;
      });
    } catch (e) {
      // If there is an error, show a snackbar with the error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  final _formkey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();

  addNewReceipt(context) {
    setState(() {
      Navigator.pop(context);
      product.add({
        "name": _nameController.text,
        "quantity": _quantityController.text,
        "imagePath": _pickImage().toString(),
      });
      _nameController.clear();
      _quantityController.clear();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductList(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Add Receipt'),
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
                            return 'Please enter Product Name';
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        controller: _quantityController,
                        decoration: InputDecoration(
                          labelText: "Quantity",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Quantity';
                          } else {
                            return null;
                          }
                        },
                      ),
                      ElevatedButton(
                        onPressed: _pickImage,
                        child: const Text('Pick an image'),
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
