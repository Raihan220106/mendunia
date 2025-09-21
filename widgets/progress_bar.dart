import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress; // 0.0 to 1.0
  final String label;

  const ProgressBar({super.key, required this.progress, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(
              "${(progress * 100).toInt()}%",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 12,
            backgroundColor: Colors.grey[200],
            color: Colors.deepPurple,
          ),
        ),
      ],
    );
  }
}
