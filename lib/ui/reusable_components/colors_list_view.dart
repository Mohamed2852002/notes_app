import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/ui/reusable_components/color_container_widget.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, this.selectedIndex, this.noteModel});
  final int? selectedIndex;
  final NoteModel? noteModel;

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = widget.selectedIndex ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 40.r,
      child: ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ColorContainerWidget(
          currentIndex: currentIndex,
          listIndex: index,
          color: kColorsList[index],
          onTap: () {
            currentIndex = index;
            setState(() {});
            BlocProvider.of<ReadNoteCubit>(context).currentColor =
                kColorsList[index];
            widget.noteModel?.colorIndex = index;
            BlocProvider.of<ReadNoteCubit>(context).colorIndex = index;
          },
        ),
      ),
    );
  }
}
