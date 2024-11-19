import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/delete_note_cubit/delete_note_cubit.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/themes/app_themes.dart';
import 'package:notes_app/ui/screens/home/notes_screen.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ReadNoteCubit(),
          ),
          BlocProvider(
            create: (context) => DeleteNoteCubit(),
          ),
        ],
        child: MaterialApp(
          theme: AppThemes.appTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: NotesScreen.routeName,
          routes: {NotesScreen.routeName: (context) => const NotesScreen()},
        ),
      ),
    );
  }
}
