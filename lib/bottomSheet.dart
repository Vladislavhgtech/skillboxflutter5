import 'package:flutter/material.dart';

bottomsheet() {
  return BottomSheet(
    builder: (context) => Container(
      color: Colors.greenAccent,
      height: 200,
      child: const Center(
        child: Text('Bottom sheet'),
      ),
    ),
    onClosing: () {},
  );
}
