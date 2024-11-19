import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/ui/screens/home/widgets/note_item_widget.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, NoteStates>(
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
            padding: REdgeInsets.symmetric(vertical: 16),
            separatorBuilder: (context, index) => const RSizedBox(height: 8),
            itemCount: BlocProvider.of<AddNoteCubit>(context).notes.length,
            itemBuilder: (context, index) => NoteItemWidget(
              noteModel: BlocProvider.of<AddNoteCubit>(context).notes[index],
            ),
          ),
        );
      },
    );
  }
}
