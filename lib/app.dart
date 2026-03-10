import 'package:flutter/material.dart';
import 'package:youtube_lite/presentation/home/screens/home_screens.dart';

import 'core/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: .dark(
          primary: AppColors.youtubePrimary,
          surface: AppColors.surfaceDark,
        ),
        scaffoldBackgroundColor: AppColors.backgroundDark,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundDark,)
      ),
      home: HomeScreens(),
    );
  }
}
























