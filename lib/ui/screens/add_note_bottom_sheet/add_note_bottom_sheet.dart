import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/ui/screens/add_note_bottom_sheet/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Builder(
        builder: (context) {
          return BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                debugPrint('Error : ${state.errorMessage}');
              } else if (state is AddNoteSuccess) {
                Navigator.pop(context);
                BlocProvider.of<ReadNoteCubit>(context).readNotes();
                showCustomSnackBar(context, 'Note Added Successfully');
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                child: Padding(
                  padding: REdgeInsets.only(
                      top: 28,
                      bottom: MediaQuery.viewInsetsOf(context).bottom,
                      left: 24,
                      right: 24),
                  child: const SingleChildScrollView(
                    child: AddNoteForm(),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
