import 'package:flutter/material.dart';
import 'package:notes_app/ui/screens/home/widgets/custom_floating_action_button.dart';
import 'package:notes_app/ui/screens/home/widgets/notes_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: NotesScreenBody(),
    );
  }
}
