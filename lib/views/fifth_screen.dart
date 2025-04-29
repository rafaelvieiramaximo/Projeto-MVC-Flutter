import 'package:flutter/material.dart';
import 'package:projeto_28_04/components/custom_app_bar.dart';
import 'package:projeto_28_04/styles/app_styles.dart';
import 'package:projeto_28_04/controllers/navigation_controller.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackButton: true),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Son_Smurf.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.smurfTopPadding,
              left: AppSpacing.smurfLeftPadding,
              right: AppSpacing.smurfRightPadding,
              bottom: AppSpacing.smurfBottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Available P1',
                  style: AppTextStyles.defaultText,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Topicos Avancados',
                  style: AppTextStyles.defaultText,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.smurfSpaceBetweenTextAndButton),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                      style: AppTextStyles.roundedButton(AppColors.buttonGirl),
                      onPressed: () {
                        NavigationController.goTo(context, '/third');
                      },
                      child: const Text(
                        'Tela Meme Girl',
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
                      style: AppTextStyles.roundedButton(AppColors.buttongreen),
                      onPressed: () {
                        NavigationController.goTo(context, '/fourth');
                      },
                      child: const Text(
                        'Tela Pele',
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
