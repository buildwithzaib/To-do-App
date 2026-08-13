import 'package:flutter/material.dart';
import 'package:todo_appp/constants/colors.dart';
import 'package:todo_appp/constants/models/todo.dart';

class TodoItems extends StatelessWidget {
  const TodoItems(
      {super.key,
      required this.todo,
      required this.onToDoChanged,
      this.ondeleteitem});
  final ToDo todo;
  final onToDoChanged;
  final ondeleteitem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print("clicked in ToDo-items");
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: tdBGColor,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdblue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tedblack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 5),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdred,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            onPressed: () {
              // print("Clicked in delete icon.");
              ondeleteitem(todo.id);
            },
            icon: Icon(
              Icons.delete,
            ),
          ),
        ),
      ),
    );
  }
}
