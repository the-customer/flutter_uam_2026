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
    this.isActive = false, 
    this.onTap
    });

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: isActive ? onTap : null,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: isActive ? color.withAlpha(100) : Colors.grey.shade200
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 12,
              offset: const Offset(0, 6)
            ),
          ]
        ),
        child: Row(
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: color.withOpacity(0.12),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Icon(
                icon,
                color: color,
                size: 28,
              ),
            ),
            
            const SizedBox(width: 16,),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4,),

                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600
                    ),
                  ),
                ],
              ),
            ),
            if (isActive)
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade500,
                size: 18,
              )
            else
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  "A venir",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
          ],
        )
      ),
    );
  }

}