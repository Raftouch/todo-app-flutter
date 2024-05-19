import 'package:flutter/material.dart';
import 'package:todo_app/components/todo-tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('To Do'),
          elevation: 0,
        ),
        body: ListView(
          children: [
            TodoTile(),
            TodoTile(),
            TodoTile(),
            TodoTile(),
          ],
        ));
  }
}
