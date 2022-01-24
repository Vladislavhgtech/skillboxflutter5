import 'package:flutter/material.dart';

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
  int _counter = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // void openDrawer() {
  //   scaffoldKey.currentState.openDrawer();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App bar Title'), actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.person_add)),
        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      ]),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 80,
                backgroundImage: NetworkImage(
                    'https://w-dog.ru/wallpapers/1/31/436264741994684/romanticheskaya-kottedzh-romanticheskij-kottedzh-karintiya-avstriya-hdr-magdalensberg-avstriya-avstriya.jpg'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Favorite'),
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Exit'),
              leading: Icon(Icons.exit_to_app),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [TextButton(onPressed: () {}, child: Text('Open Drawer'))],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
