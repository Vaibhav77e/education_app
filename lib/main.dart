import 'package:education_app_tdd/core/res/app_colors.dart';
import 'package:education_app_tdd/core/res/fonts.dart';
import 'package:education_app_tdd/core/services/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(accentColor: AppColors.primaryColour),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.transparent),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: Fonts.poppins,
      ),
      onGenerateRoute: generatedRoutes,
    );
  }
}

