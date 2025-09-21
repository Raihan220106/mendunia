import 'package:flutter/material.dart';
import '../models/lesson_model.dart';
import '../data/mock_data.dart';

class AppProvider with ChangeNotifier {
  // 👤 Data User
  String selectedLanguage = 'Korean'; // default: Korea
  int currentStreak = 3;
  int totalXP = 450;
  int level = 5;

  // 📚 Data Pelajaran (diambil dari mock data)
  List<LessonModel> get koreanLessons => mockKoreanLessons;
  List<LessonModel> get japaneseLessons => mockJapaneseLessons;

  // 🔄 Fungsi Ganti Bahasa
  void switchLanguage(String lang) {
    selectedLanguage = lang;
    notifyListeners(); // Beri tahu UI untuk update
  }

  // ✅ Fungsi Saat User Selesaikan Lesson
  void completeLesson(LessonModel lesson) {
    totalXP += 50; // Tambah XP
    currentStreak++; // Naikkan streak (bisa dikembangkan logikanya)
    notifyListeners();
  }

  // 🔁 Reset Streak (opsional, untuk fitur "reset" nanti)
  void resetStreak() {
    currentStreak = 0;
    notifyListeners();
  }
}
