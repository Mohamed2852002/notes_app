import 'package:flutter/material.dart';
import 'package:notes_app/ui/screens/add_note_bottom_sheet/add_note_bottom_sheet.dart';
import 'package:notes_app/ui/reusable_components/custom_floating_action_button.dart';
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
            builder: (context) => const AddNoteBottomSheet(),
          );
        },
        icon: Icons.add,
      ),
      body: const NotesScreenBody(),
    );
  }
}
