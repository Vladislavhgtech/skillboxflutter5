import 'package:flutter/material.dart';

class DrawerMenuItem {
  Text text;
  Icon icon;
  DrawerMenuItem({required this.text, required this.icon});
}

List<DrawerMenuItem> listDrawerMenuItem = [
  DrawerMenuItem(text: const Text('Home'), icon: const Icon(Icons.home)),
  DrawerMenuItem(text: const Text('Profile'), icon: const Icon(Icons.person)),
  DrawerMenuItem(text: const Text('Images'), icon: const Icon(Icons.image)),
];

Widget buildDrawler() {
  return Drawer(
    child: SafeArea(
      child: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.brown.shade800,
              child: const Text('KT'),
            ),
          ),
          Expanded(
            child: ListView(
                children: listDrawerMenuItem
                    .map((item) => Card(
                          child: ListTile(
                              leading: item.icon,
                              title: item.text,
                              trailing: const Icon(Icons.arrow_forward_ios)),
                        ))
                    .toList()),
            flex: 3,
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: const Text('Выход'),
                      onPressed: () {},
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: const Text('Регистрация'),
                      onPressed: () {},
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildEndDrowler() {
  return Drawer(
      child: SafeArea(
    child: Center(
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.brown.shade800,
        child: const Text('KT'),
      ),
    ),
  ));
}
