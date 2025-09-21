String formatXP(int xp) {
  if (xp >= 1000) {
    return "${(xp / 1000).toStringAsFixed(1)}K";
  }
  return xp.toString();
}

String formatDate(DateTime date) {
  return "${date.day}/${date.month}/${date.year}";
}

String getInitials(String name) {
  if (name.isEmpty) return "KJ";
  final parts = name.split(" ");
  if (parts.length == 1) {
    return parts[0].substring(0, 1).toUpperCase();
  }
  return "${parts[0][0]}${parts[1][0]}".toUpperCase();
}
