import 'package:ocr_app/model/data.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return Item(index: key);
        },
      ),
    );
  }
}
