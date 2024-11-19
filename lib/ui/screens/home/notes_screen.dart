import 'package:flutter/material.dart';
import 'package:notes_app/ui/screens/create_note_bottom_sheet/create_note_bottom_sheet.dart';
import 'package:notes_app/ui/screens/home/widgets/custom_floating_action_button.dart';
import 'package:notes_app/ui/screens/home/widgets/notes_screen_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(
        onBtnPress: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => const CreateNoteBottomSheet(),
          );
        },
        icon: Icons.add,
      ),
      body: const NotesScreenBody(),
    );
  }
}
