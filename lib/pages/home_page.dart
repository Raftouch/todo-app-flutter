import 'package:flutter/material.dart';
import 'package:todo_app/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// list of todo tasks
  List todoList = [
    ["Walk my dog", false], // 0, 1
    ["Go to gym", false], // 0, 1
  ];

// check a task
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('To Do'),
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: todoList[index][0],
              taskCompleted: todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ));
  }
}
