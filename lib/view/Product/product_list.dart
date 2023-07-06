import 'package:digital_receipt_app/view/Product/Model/productModel.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  // final List<Receipt> receipts;
  // ReceiptList({required this.receipts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage: AssetImage(product[index]['imagePath']),
          ),
          title: Text(product[index]['name']),
          subtitle: Text(product[index]['quantity']),
        );
      },
    );
  }
}
