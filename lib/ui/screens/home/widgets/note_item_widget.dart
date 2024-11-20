// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/ui/reusable_components/custom_message_dialog.dart';
import 'package:notes_app/ui/screens/edit_note_screen/edit_note_screen.dart';

class NoteItemWidget extends StatefulWidget {
  const NoteItemWidget({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<NoteItemWidget> createState() => _NoteItemWidgetState();
}

class _NoteItemWidgetState extends State<NoteItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteScreen(noteModel: widget.noteModel),
          ),
        );
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 150),
        opacity: widget.noteModel.fadingIndex!,
        child: Container(
          padding: REdgeInsets.only(
            left: 24,
            right: 10,
            top: 16,
          ),
          decoration: BoxDecoration(
            color: Color(widget.noteModel.color),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: REdgeInsets.all(0),
                title: Text(
                  widget.noteModel.noteTitle,
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
                    widget.noteModel.noteDesc,
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
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) => CustomMessageDialog(
                        message: 'Are You Sure You Want to Delete This Note ?',
                        negativeBtnTitle: 'No',
                        positiveBtnTitle: 'Yes',
                        negativeBtnPressed: () {
                          Navigator.pop(context);
                        },
                        positiveBtnPressed: () async {
                          Navigator.pop(context);
                          widget.noteModel.fadingIndex = 0;
                          setState(() {});
                          await Future.delayed(
                              const Duration(milliseconds: 150));
                          widget.noteModel.delete();
                          BlocProvider.of<ReadNoteCubit>(context).readNotes();
                          showCustomSnackBar(
                              context, 'Note Deleted Successfully');
                        },
                      ),
                    );
                  },
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
                  DateFormat.yMMMEd().format(widget.noteModel.date),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
