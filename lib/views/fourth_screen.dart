import 'package:flutter/material.dart';
import 'package:projeto_28_04/components/custom_app_bar.dart';
import 'package:projeto_28_04/styles/app_styles.dart';
import 'package:projeto_28_04/controllers/navigation_controller.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackButton: true, nextPage: '/fifth'),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Pele.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.peleTopPadding,
              left: AppSpacing.peleLeftPadding,
              right: AppSpacing.peleRightPadding,
              bottom: AppSpacing.peleBottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Available P1',
                  style: AppTextStyles.fourthText,
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Topicos Avancados',
                  style: AppTextStyles.fourthText,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.peleSpaceBetweenTextAndButton),
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
