// lib/widgets/skill_card.dart
import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final String title;
  final List<String> skills;
  final IconData icon;

  const SkillCard({
    super.key,
    required this.title,
    required this.skills,
    required this.icon,
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
                Icon(icon, color: Colors.blue),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    //  fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ...skills.map((skill) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    skill,
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
