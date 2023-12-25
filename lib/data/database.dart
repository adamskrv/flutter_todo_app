//local db to store todolist
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  //list of todos
  List toDoList = [];

  //referencing the hive box.
  final _myBox = Hive.box('myBox');

//this method is for the first time ever users open up the app.
  void createInitialData() {
    toDoList = [
      ["Ensure to smile today", false],
      ["Slide from right to delete", false],
    ];
  }

  //this method is to load up data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //this method is to update the db
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
