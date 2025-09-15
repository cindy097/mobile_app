import 'package:flutter/material.dart';
import '../../data/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      surfaceTintColor: Colors.transparent,
      elevation: 3,
      shadowColor: Colors.black.withOpacity(0.50),
      centerTitle: false,

      // Hapus ruang leading sepenuhnya
      leadingWidth: 0, // <- ini penting, hapus ruang default leading (56 px)
      leading: const SizedBox.shrink(),

      // Geser logo pakai Row tanpa padding
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 40,
          ),
        ],
      ),
    );
  }


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
