import 'package:flutter/material.dart';
import '../../widgets/flashcard_widget.dart';
import '../../data/mock_data.dart';

class KoreanScreen extends StatelessWidget {
  const KoreanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lesson = mockKoreanLessons[0]; // contoh: modul pertama

    return Scaffold(
      appBar: AppBar(title: const Text("Bahasa Korea")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: lesson.flashcards.length,
        itemBuilder: (context, index) {
          final card = lesson.flashcards[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: FlashcardWidget(
              frontText: card.word,
              backText: card.translation,
              pronunciation: card.pronunciation,
              audioUrl: card.audioUrl,
              imageUrl: card.imageUrl,
            ),
          );
        },
      ),
    );
  }
}
