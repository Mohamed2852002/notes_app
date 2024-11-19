import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/ui/reusable_components/custom_text_field.dart';
import 'package:notes_app/ui/reusable_components/custom_app_bar.dart';

class EditNoteScreenBody extends StatefulWidget {
  const EditNoteScreenBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteScreenBody> createState() => _EditNoteScreenBodyState();
}

class _EditNoteScreenBodyState extends State<EditNoteScreenBody> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  @override
  void initState() {
    titleController.text = widget.noteModel.noteTitle;
    noteController.text = widget.noteModel.noteDesc;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(
        left: 22,
        right: 22,
        top: 55,
      ),
      child: Column(
        children: [
          const CustomAppBar(title: 'Edit Note', icon: Icons.check),
          const RSizedBox(height: 16),
          CustomTextField(hintText: 'Title', controller: titleController),
          const RSizedBox(height: 12),
          Expanded(
            child: CustomTextField(
              hintText: 'Note',
              controller: noteController,
            ),
          ),
        ],
      ),
    );
  }
}
