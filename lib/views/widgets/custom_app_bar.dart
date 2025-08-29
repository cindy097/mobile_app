import 'package:flutter/material.dart';
import '../../data/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      surfaceTintColor: Colors
          .transparent, // biar nggak ada tint aneh dari Material 3
      elevation: 3, // kasih shadow tipis
      shadowColor: Colors.black.withOpacity(0.25), // atur warna bayangan
      centerTitle: false, // biar logo di kiri
      title: Image.asset(
        "assets/images/logo.png", // ganti sesuai nama file logo kamu
        height: 40,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
