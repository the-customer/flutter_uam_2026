import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget{

  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: const Center(
        child: const Text(
          "Module Todo List",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        )
      ),
    );
  }

}