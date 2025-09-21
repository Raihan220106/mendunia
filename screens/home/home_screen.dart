// ... bagian atas tetap sama

// Di bagian _buildLessonList, ganti navigasi:

GestureDetector(
  onTap: () {
    if (appProvider.selectedLanguage == 'Korean') {
      Navigator.pushNamed(context, '/korean');
    } else {
      Navigator.pushNamed(context, '/japanese');
    }
  },
  // ... child tetap sama
)

// Di bagian _buildDailyChallenge, tambahkan navigasi ke quiz:

GestureDetector(
  onTap: () => Navigator.pushNamed(context, '/quiz'),
  child: Container(
    // ... isi tetap sama, tambahkan onTap wrapper
  ),
)

// Di AppBar actions, tambahkan navigasi ke profile:

IconButton(
  onPressed: () => Navigator.pushNamed(context, '/profile'),
  icon: const Icon(Icons.person_outline),
),