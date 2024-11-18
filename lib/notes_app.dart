import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/themes/app_themes.dart';
import 'package:notes_app/ui/screens/home/home_screen.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: AppThemes.appTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes: {HomeScreen.routeName: (context) => const HomeScreen()},
      ),
    );
  }
}
