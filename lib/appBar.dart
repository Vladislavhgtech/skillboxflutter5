import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

appBar() {
  return AppBar(
      title: const Center(
        child: Text('App bar Title'),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.person_add)),
        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      ]);
}
