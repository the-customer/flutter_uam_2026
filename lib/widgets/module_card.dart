import 'package:flutter/material.dart';

class ModuleCard extends StatelessWidget{
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final bool isActive;
  final VoidCallback? onTap;


  const ModuleCard({
    super.key, 
    required this.title, 
    required this.subtitle, 
    required this.icon, 
    required this.color, 
    required this.isActive, 
    this.onTap
    });

  @override
  Widget build(BuildContext context) {
    
    return Text(title);
  }

}