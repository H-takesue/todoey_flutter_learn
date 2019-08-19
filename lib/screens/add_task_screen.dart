import 'package:flutter/material.dart';
import 'package:todoey_flutter/modules/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/modules/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: myController,
            ),
            FlatButton(
              child: Text('Add',
              style: TextStyle(
                color: Colors.white
              ),),
              color: Colors.lightBlueAccent,
              onPressed: (){
                final task = Task(name: myController.text);
                Provider.of<TaskData>(context).addTask(task);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
