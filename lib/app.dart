import 'package:Arccessory/features/auth/screens/onboarding/onboarding.dart';
import 'package:Arccessory/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Arccessory",
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      home: OnBoardingScreen(),
    );
  }
}
