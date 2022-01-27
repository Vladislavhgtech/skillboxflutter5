import 'package:flutter/material.dart';
import 'package:skillboxflutter5/library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    void _openDrawer() {
      scaffoldKey.currentState!.openDrawer();
    }

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
          title: const Center(
            child: Text('App bar Title'),
          ),
          actions: [
            IconButton(
              onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
              icon: const Icon(Icons.person),
            ),
          ]),
      drawer: buildDrawler(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: _openDrawer,
              child: const Text('Open Drawer'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const SizedBox(
                height: 400,
              );
            },
          );
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
      bottomNavigationBar: botomNavigationBar(),
      endDrawer: buildEndDrowler(),
    );
  }
}
