import 'package:flutter/material.dart';
import 'package:hub/models/task.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}


class _TodoPageState extends State<TodoPage>{

  final TextEditingController taskController = TextEditingController();

  final List<Task> tasks = [
    Task(title: 'Comprendre StatelessWidget'),
    Task(title: 'Comprendre StatefullWidget'),
    Task(title: 'Créer ma première Todo list App'),
  ];

  int get remainingTasksCount{
    return tasks.where((task) => !task.isDone).length;
  }

  void addTask(){
    final String title = taskController.text.trim();

    if(title.isEmpty){
      return;
    }

    setState(() {
      tasks.add(Task(title: title));
      taskController.clear();
    });
  }

  void deleteTask(int index){
    setState(() {
      tasks.removeAt(index);
    });
  }

  void deleteCompletedTasks(){
    setState(() {
      tasks.removeWhere((task) => task.isDone);
    });
  }

  @override
  void dispose(){
    taskController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    return Text("dsjkfhds");
  }

}