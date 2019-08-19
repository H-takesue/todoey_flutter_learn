import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/modules/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  /// Adds [item] to cart. This is the only way to modify the cart from outside.
  void addTask(Task task) {
    tasks.add(task);
    print (tasks);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void changeToggle(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteData (int index){
    tasks.removeAt(index);
    notifyListeners();
  }

  int getLength(){
    return tasks.length;
  }
}
