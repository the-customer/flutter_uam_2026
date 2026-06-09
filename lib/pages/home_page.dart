import 'package:flutter/material.dart';
import 'package:hub/widgets/module_card.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 10,),
            const Text(
              "Flutter Starter Hub",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              "Une application pour apprendre Flutter avec plusieurs mini-projets",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 28,),
            const ModuleCard(title: "Module 1",),
            const ModuleCard(title: "Algo",),
            const ModuleCard(title: "nice",),
          ],
        ),
      ),
    );
  }

  
}