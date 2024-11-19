import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/ui/reusable_components/custom_text_field.dart';
import 'package:notes_app/ui/screens/add_note_bottom_sheet/widgets/custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  GlobalKey<FormState> createFormKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: createFormKey,
      child: Column(
        children: [
          Text(
            'Creat a Note',
            style: TextStyle(
              fontSize: 18.sp,
            ),
          ),
          const RSizedBox(height: 16),
          CustomTextField(
            hintText: 'Title',
            controller: titleController,
          ),
          const RSizedBox(height: 12),
          CustomTextField(
            controller: noteController,
            hintText: 'Note',
            contentPadding: 200,
          ),
          const RSizedBox(height: 12),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return RSizedBox(
                width: double.infinity,
                height: 40,
                child: CustomButton(
                  onBtnPress: () {
                    if (createFormKey.currentState!.validate()) {
                      createFormKey.currentState!.save();
                      NoteModel noteModel = NoteModel(
                        noteTitle: titleController.text,
                        noteDesc: noteController.text,
                        date: DateTime.now(),
                        color: Colors.red.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  isLoading: state is AddNoteLoading ? true : false,
                ),
              );
            },
          ),
          const RSizedBox(height: 24),
        ],
      ),
    );
  }
}
