import 'package:flutter/material.dart';
import 'package:projeto_28_04/controllers/navigation_controller.dart';
import 'package:projeto_28_04/styles/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? nextPage;
  final bool showBackButton;

  const CustomAppBar({super.key, this.nextPage, this.showBackButton = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarNav,
      leading: IconButton(
        icon: const Icon(Icons.home_filled),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showBackButton)
            IconButton(
              icon: const Icon(Icons.chevron_left_rounded),
              onPressed: () {
                NavigationController.goBack(context);
              },
            ),
          Expanded(
            child: Text(
              'Rafael Máximo - ${DateTime.now().year}',
              style: AppTextStyles.appBarText,
              textAlign: TextAlign.center,
            ),
          ),
          if (nextPage != null)
            IconButton(
              icon: const Icon(Icons.chevron_right_rounded),
              onPressed: () {
                NavigationController.goTo(context, nextPage!);
              },
            ),
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
