

import 'package:book/new_project/to_do_model.dart';
import 'package:hive/hive.dart';

class ToDoService{

  final String _boxName = "Tasks";
  final String _price = 'Price';
  Future<Box<ToDoModel>> get _box async => await Hive.openBox<ToDoModel>(_boxName);
  Future<Box<ToDoModel>> get _priceBox async => await Hive.openBox<ToDoModel>(_price);
  //Create
  Future<void> addTodo(ToDoModel item) async {
    var box = await _box;
    await box.add(item);
  }



  // Read
  Future<List<ToDoModel>> getAllTodos() async {
    var box = await _box;
    return box.values.toList();
  }

  // Delete
  Future<void> deleteTodo(int index) async {
    var box = await _box;
    await box.deleteAt(index);
  }

  // check
  Future<void> toggleCompleted(int index, ToDoModel item) async {
    var box = await _box;
    item.isComplete = !item.isComplete;
    await box.putAt(index, item);
  }
}