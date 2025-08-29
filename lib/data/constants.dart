import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF0A4D96); // biru utama
  static const Color secondary = Color(0xFF1E88E5);
  static const Color background = Colors.white;
  static const Color textPrimary = Colors.black87;
  static const Color textSecondary = Colors.black54;
  static const Color grey = Colors.grey;
}

class AppTextStyles {
  static const TextStyle heading1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static final TextStyle headline2 = TextStyle( // ✅ pakai final, bukan const
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  static const TextStyle link = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
    decoration: TextDecoration.underline,
  );
}




class AppSizes {
  static const double padding = 16.0;
  static const double borderRadius = 12.0;
  static const double iconSize = 24.0;
  static const double radius = 12.0;
}
