import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/ui/screens/edit_note_screen/widgets/edit_note_screen_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteScreenBody(noteModel: noteModel),
    );
  }
}
