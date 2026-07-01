import 'package:flutter/material.dart';
import 'package:hub/pages/todo_page.dart';
import 'package:hub/widgets/module_card.dart';

class AppModule{
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final bool isActive;
  final Widget? page;

  const AppModule({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    this.isActive = false,
    this.page
  });
}

class HomePage extends StatelessWidget{
   HomePage({super.key});

  final List<AppModule> modules = [
    AppModule(
              title: "Todo App", 
              subtitle: "Créer, cocher et supprimer des taches", 
              color: Colors.green,
              isActive: true,
              icon: Icons.check_circle,
              page: TodoPage()
              ),

              
              AppModule(
              title: "Book App", 
              subtitle: "Gestion d'une mini bibliotheque", 
              color: Colors.red,
              icon: Icons.check_circle,
              ),

              AppModule(
              title: "Notes App", 
              subtitle: "Gestion des notes", 
              color: Colors.red,
              icon: Icons.check_circle,
              ),

              AppModule(
              title: "Depense Tracher", 
              subtitle: "Gerer mes depenses", 
              color: Colors.red,
              icon: Icons.check_circle,
              ),

              AppModule(
              title: "Quizz App", 
              subtitle: "Bla bla bla ...", 
              color: Colors.red,
              icon: Icons.check_circle,
              ),
  ];


  void openModule(BuildContext context,AppModule module){
    if(module.page == null){
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => module.page!
      )
    );
  }
  
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


              ...modules.map((module){
                return ModuleCard(
                title: module.title, 
                subtitle: module.subtitle, 
                color: module.color,
                isActive: module.isActive,
                icon: module.icon,
                onTap: () => openModule(context, module),
                );
              })

          ],
        ),
      ),
    );
  }

  
}