import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/ui/screens/home/widgets/custom_app_bar.dart';
import 'package:notes_app/ui/screens/home/widgets/notes_list_view_builder.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

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
