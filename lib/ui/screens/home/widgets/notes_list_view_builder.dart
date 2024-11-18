import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/ui/screens/home/widgets/note_item_widget.dart';

class NotesListViewBuilder extends StatelessWidget {
  const NotesListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: REdgeInsets.symmetric(vertical: 16),
        separatorBuilder: (context, index) => const RSizedBox(height: 8),
        itemCount: 6,
        itemBuilder: (context, index) => const NoteItemWidget(),
      ),
    );
  }
}
