import 'package:digital_receipt_app/view/Employee/add_employee.dart';
import 'package:digital_receipt_app/view/GST/add_GST.dart';
import 'package:digital_receipt_app/view/Product/add_product.dart';

import 'package:digital_receipt_app/view/homeview.dart';

import 'package:flutter/material.dart';

const backgroundColor = Colors.black;

var pageindex = [
  HomeView(),
  AddEmployee(),
  AddGST(),
  AddProduct(),
];
