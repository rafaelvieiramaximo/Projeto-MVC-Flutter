import 'package:flutter/material.dart';
import 'package:projeto_28_04/components/custom_app_bar.dart';
import 'package:projeto_28_04/controllers/navigation_controller.dart';
import 'package:projeto_28_04/styles/app_styles.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(nextPage: '/fourth', showBackButton: true),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Meme_Girl.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.memegirlTopPadding,
              left: AppSpacing.memegirlLeftPadding,
              right: AppSpacing.memegirlRightPadding,
              bottom: AppSpacing.memegirlBottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Avaliação P1',
                  style: AppTextStyles.defaultText,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Tópicos Avançados',
                  style: AppTextStyles.defaultText,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.memegirlSpaceBetweenTextAndButton),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttongold),
                      onPressed: () {
                        NavigationController.goTo(context, '/second');
                      },
                      child: const Text(
                        'Tela Bart',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttongreen),
                      onPressed: () {
                        NavigationController.goTo(context, '/fourth');
                      },
                      child: const Text(
                        'Tela Pelé',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: AppTextStyles.roundedButton(AppColors.buttonBlue),
                      onPressed: () {
                        NavigationController.goTo(context, '/fifth');
                      },
                      child: const Text(
                        'Tela Smurf',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
