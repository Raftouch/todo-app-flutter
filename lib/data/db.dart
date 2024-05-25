import 'package:hive_flutter/hive_flutter.dart';

class TodoDb {
  List todoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening the app
  void createInitialData() {
    todoList = [
      ["Walk my dog", false],
      ["Go to gym", false],
    ];
  }

  // load data from db
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  // update db
  void updateData() {
    _myBox.put('TODOLIST', todoList);
  }
}
