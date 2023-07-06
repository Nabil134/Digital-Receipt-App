import 'dart:io';
import 'dart:typed_data';

import 'package:digital_receipt_app/view/Employee/Model/employeeModel.dart';
import 'package:digital_receipt_app/view/Employee/employee_list.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AddEmployee extends StatefulWidget {
  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
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
  TextEditingController _idController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _totalAmountController = TextEditingController();

  addNewReceipt(context) {
    setState(() {
      Navigator.pop(context);
      employee.add({
        "id": _idController.text,
        "date": _dateController.text,
        "totalAmount": _totalAmountController.text,
        "imagePath": _pickImage().toString(),
      });
      _idController.clear();
      _dateController.clear();
      _totalAmountController.clear();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: EmployeeList(),
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
                        controller: _dateController,
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
                        controller: _totalAmountController,
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
