import 'package:flutter/material.dart';
import 'detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Menu',
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  final List<String> menuItems = [    'option',    'scan sampah',    'kirim sampah',    'profile',  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(menuItems[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(title: menuItems[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
