import 'package:digital_receipt_app/view/Employee/Model/employeeModel.dart';
import 'package:flutter/material.dart';

class EmployeeList extends StatelessWidget {
  // final List<Receipt> receipts;
  // ReceiptList({required this.receipts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: employee.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage: AssetImage(employee[index]['imagePath']),
          ),
          title: Text(employee[index]['id']),
          subtitle: Text(employee[index]['date']),
          trailing: Text(employee[index]['totalAmount'].toString()),
        );
      },
    );
  }
}
