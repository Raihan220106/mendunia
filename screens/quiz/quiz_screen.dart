import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daily Quiz")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Apa arti dari '사과'?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ...List.generate(4, (index) {
              String option = ['Apel', 'Pisang', 'Jeruk', 'Anggur'][index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    alignment: Alignment.centerLeft,
                  ),
                  onPressed: () {},
                  child: Text(
                    option,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              );
            }),
            const Spacer(),
            CustomButton(
              text: "Submit",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
