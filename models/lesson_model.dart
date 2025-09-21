// lib/models/lesson_model.dart

class LessonModel {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final List<FlashcardModel> flashcards;

  LessonModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.flashcards,
  });
}

class FlashcardModel {
  final String word; // Kata dalam bahasa target (e.g. "사과", "りんご")
  final String translation; // Terjemahan (e.g. "Apple")
  final String pronunciation; // Cara baca (e.g. "sa-gwa", "ringo")
  final String audioUrl; // URL/link ke file audio
  final String imageUrl; // URL/link ke gambar ilustrasi

  FlashcardModel({
    required this.word,
    required this.translation,
    required this.pronunciation,
    required this.audioUrl,
    required this.imageUrl,
  });
}
