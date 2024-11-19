import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/ui/screens/edit_note_screen/edit_note_screen.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteScreen(noteModel: noteModel),
          ),
        );
      },
      child: Container(
        padding: REdgeInsets.only(
          left: 24,
          right: 10,
          top: 16,
        ),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: REdgeInsets.all(0),
              title: Text(
                noteModel.noteTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                ),
              ),
              subtitle: Padding(
                padding: REdgeInsets.only(top: 16, right: 32),
                child: Text(
                  noteModel.noteDesc,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16.sp,
                  ),
                ),
              ),
              iconColor: Colors.black,
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: 30.sp,
                ),
              ),
            ),
            Padding(
              padding: REdgeInsets.only(
                right: 10,
                bottom: 26,
              ),
              child: Text(
                DateFormat.yMMMEd().format(noteModel.date),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
