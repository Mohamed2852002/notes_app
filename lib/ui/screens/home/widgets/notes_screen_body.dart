import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/ui/reusable_components/custom_app_bar.dart';
import 'package:notes_app/ui/screens/home/widgets/notes_list_view_builder.dart';

class NotesScreenBody extends StatefulWidget {
  const NotesScreenBody({super.key});

  @override
  State<NotesScreenBody> createState() => _NotesScreenBodyState();
}

class _NotesScreenBodyState extends State<NotesScreenBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNoteCubit>(context).readNotes();
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
      child: const Column(
        children: [
          CustomAppBar(title: 'Notes', icon: Icons.search),
          RSizedBox(height: 8),
          NotesListViewBuilder(),
        ],
      ),
    );
  }
}
