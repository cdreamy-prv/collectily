import 'package:collectily/frontend/helper/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Function()? onTap;
  const ListItem({super.key, required this.title, required this.description, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child: Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.secondaryLight,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
        ],
      ),
      child: Column(
        children: [
        Icon(icon, color: AppColors.surface, size: 40),
        const SizedBox(height: 20),
        Text(title, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: AppColors.surface)),
        Text(description, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.surface)),
        ],
      ),
      ),
    );
  }
}