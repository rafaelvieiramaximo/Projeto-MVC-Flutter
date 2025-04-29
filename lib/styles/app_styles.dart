import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightpink = Color(0xFFCF6679);
  static const Color black = Colors.black;
  static const Color gray = Color(0xFF424242);
  static const Color appBarNav = Color(0xFF000080);
  static const Color mediumAqua = Color(0xFF66CDAA);
  static const Color brown = Color.fromARGB(255, 69, 30, 3);

  static const Color buttongold = Color(0xFFFFD700);
  static const Color buttongreen = Color.fromARGB(255, 72, 197, 61);
  static const Color buttonGirl = Color(0xFFFF9800);
  static const Color buttonBlue = Color(0xFF2196F3);
  static const Color buttonLightGray = Color(0xFFF5F5F5);
}

class AppTextStyles {
  static const TextStyle clockText = TextStyle(
    fontSize: 48,
    fontFamily: 'Quicksand',
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(color: AppColors.black, blurRadius: 10.0, offset: Offset(2, 2)),
    ],
  );

  static const TextStyle buttonText = TextStyle(
    color: AppColors.brown,
    fontSize: 16,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.bold,
  );

  static const TextStyle appBarText = TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontFamily: 'Fredoka',
    fontWeight: FontWeight.bold,
  );

  static const TextStyle defaultText = TextStyle(
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.black,
  );

  static const TextStyle fourthText = TextStyle(
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.white,
    shadows: [
      Shadow(
        color: Color.fromARGB(255, 0, 0, 0),
        blurRadius: 20.0,
        offset: Offset(2, 2),
      ),
    ],
  );

  static ButtonStyle roundedButton(Color backgroundColor) {
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
    );
  }

  static ButtonStyle lightRoundedButton() {
    return ElevatedButton.styleFrom(
      backgroundColor: AppColors.buttonLightGray,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
    );
  }

  static ButtonStyle roundedButtonWithShadow(Color backgroundColor) {
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      elevation: 6,
      shadowColor: Colors.black.withValues(alpha: 0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
    );
  }
}

class AppSpacing {
  static const double bartTopPadding = 20;
  static const double bartLeftPadding = 20;
  static const double bartRightPadding = 20;
  static const double bartSpaceBetweenTextAndButton = 20;
  static const double bartSpaceAfterButtons = 20;
  static const double bartBottomPadding = 450;

  // Continuação de STYLES/app_styles.dart
  static const double memegirlTopPadding = 30;
  static const double memegirlLeftPadding = 20;
  static const double memegirlRightPadding = 20;
  static const double memegirlSpaceBetweenTextAndButton = 40;
  static const double memegirlSpaceAfterButtons = 20;
  static const double memegirlBottomPadding = 80;

  static const double peleTopPadding = 20;
  static const double peleLeftPadding = 20;
  static const double peleRightPadding = 20;
  static const double peleSpaceBetweenTextAndButton = 30;
  static const double peleSpaceAfterButtons = 20;
  static const double peleBottomPadding = 50;

  static const double smurfTopPadding = 50;
  static const double smurfLeftPadding = 20;
  static const double smurfRightPadding = 20;
  static const double smurfSpaceBetweenTextAndButton = 50;
  static const double smurfSpaceAfterButtons = 20;
  static const double smurfBottomPadding = 20;
}
