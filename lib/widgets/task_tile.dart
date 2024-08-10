import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String listTitle;
  final Function(bool?) checkBoxStateCallback;
  final VoidCallback longPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.listTitle,
      required this.checkBoxStateCallback,
      required this.longPressCallback});
  // void checkBoxCallback(bool? newValue) {
  //   setState(() {
  //     isChecked = newValue!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        listTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxStateCallback,
      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function(bool?) checkBoxStateCallback;
//   TaskCheckBox(
//       {required this.checkBoxState, required this.checkBoxStateCallback});
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }//Was example for dart callbacks
