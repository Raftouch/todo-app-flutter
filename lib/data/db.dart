import 'package:hive_flutter/hive_flutter.dart';

class TodoDb {
  List todoList = [];

  // reference the box
  final _myBox = Hive.openBox('mybox');
}
