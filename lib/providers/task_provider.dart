import 'package:flutter/material.dart';

class TaskProvider with ChangeNotifier {
  List<List<dynamic>> _toDoList = [
    ['Working to finish the internship', true],
    ['Learn Flutter', true],
    ['submit the projects', false],
    ['submit the researches', false],
    ['Explore Firebase', true],
  ];

  List<List<dynamic>> get toDoList => _toDoList;

  void toggleTaskCompletion(int index) {
    _toDoList[index][1] = !_toDoList[index][1];
    notifyListeners();
  }

  void addTask(String taskName) {
    _toDoList.add([taskName, false]);
    notifyListeners();
  }

  void removeTask(int index) {
    _toDoList.removeAt(index);
    notifyListeners();
  }
}