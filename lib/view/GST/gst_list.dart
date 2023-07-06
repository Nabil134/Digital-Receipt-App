import 'package:digital_receipt_app/view/GST/Model/GSTModel.dart';

import 'package:flutter/material.dart';

class GSTList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: gst.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(gst[index]['name']),
          subtitle: Text(gst[index]['gstNo']),
        );
      },
    );
  }
}
