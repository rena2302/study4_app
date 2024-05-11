import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child:  Text(
              'STUDY4',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
     drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          newTextDrawer('Khoa Hoc Online'),
          newTextDrawer('De Thi Online'),
          newTextDrawer('Flashcards'),
          newTextDrawer('Blog'),
          newTextDrawer('Kich Hoat Khoa Hoc'),

          ElevatedButton( // or TextButton
            onPressed: () {
          // Add your login functionality here
            },
            child: const Text(
              'Login',
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
     ),
    );
  }

  ListTile newTextDrawer(String name) {
    return ListTile(
          title: Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
          onTap: (){},
        );
  }

}

