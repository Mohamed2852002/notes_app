import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/ui/screens/create_note_bottom_sheet/widgets/custom_text_field.dart';
import 'package:notes_app/ui/screens/home/widgets/custom_floating_action_button.dart';

class CreateNoteBottomSheet extends StatefulWidget {
  const CreateNoteBottomSheet({super.key});

  @override
  State<CreateNoteBottomSheet> createState() => _CreateNoteBottomSheetState();
}

class _CreateNoteBottomSheetState extends State<CreateNoteBottomSheet> {
  TextEditingController titleController = TextEditingController();

  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(
          top: 28,
          bottom: MediaQuery.viewInsetsOf(context).bottom == 0
              ? 28
              : MediaQuery.viewInsetsOf(context).bottom + 28,
          left: 24,
          right: 24),
      child: SingleChildScrollView(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFloatingActionButton(
                  icon: Icons.close,
                  onBtnPress: () {
                    Navigator.pop(context);
                  },
                ),
                CustomFloatingActionButton(
                  icon: Icons.add,
                  onBtnPress: () {
                    BlocProvider.of<AddNoteCubit>(context).addNote();
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
