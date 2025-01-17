import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box('mybox');

// use this method when app is 1st time opening
  void createInitialData() {
    toDoList = [
      ["wake up", false],
      ["do exercise", false],
    ];
  }

  // load the data form the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

// update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
