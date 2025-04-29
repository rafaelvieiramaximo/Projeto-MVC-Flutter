import 'package:flutter/material.dart';
import 'package:projeto_28_04/components/custom_app_bar.dart';
import 'package:projeto_28_04/styles/app_styles.dart';
import 'package:projeto_28_04/controllers/navigation_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(nextPage: '/third', showBackButton: false),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Bart.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSpacing.bartTopPadding,
              left: AppSpacing.bartLeftPadding,
              right: AppSpacing.bartRightPadding,
              bottom: AppSpacing.bartBottomPadding,
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
                SizedBox(height: AppSpacing.bartSpaceBetweenTextAndButton),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: AppTextStyles.roundedButton(
                            AppColors.buttonGirl,
                          ),
                          onPressed: () {
                            NavigationController.goTo(context, '/third');
                          },
                          child: const Text(
                            'Tela Meme Girl',
                            style: AppTextStyles.buttonText,
                          ),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                          style: AppTextStyles.roundedButton(
                            AppColors.buttongreen,
                          ),
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
                          style: AppTextStyles.roundedButton(
                            AppColors.buttonBlue,
                          ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
