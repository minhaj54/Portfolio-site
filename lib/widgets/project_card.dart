// lib/widgets/project_card.dart
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final List<String> tags;
  final Color color;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.tags,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_circle_right_outlined))
              ],
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(color: Colors.grey[400]),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: tags
                  .map((tag) => Chip(
                        label: Text(tag),
                        backgroundColor: color.withOpacity(0.1),
                        labelStyle: TextStyle(color: color),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
