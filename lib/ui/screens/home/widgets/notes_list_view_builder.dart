import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_state.dart';
import 'package:notes_app/ui/screens/home/widgets/note_item_widget.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
            padding: REdgeInsets.symmetric(vertical: 16),
            separatorBuilder: (context, index) => const RSizedBox(height: 8),
            itemCount: BlocProvider.of<ReadNoteCubit>(context).notes.length,
            itemBuilder: (context, index) => NoteItemWidget(
              noteModel: BlocProvider.of<ReadNoteCubit>(context).notes[index],
            ),
          ),
        );
      },
    );
  }
}
