import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/read_note_cubit/read_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class ReadNoteCubit extends Cubit<ReadNoteState> {
  ReadNoteCubit() : super(ReadNoteInitial());
  List<NoteModel> notes = [];
  Color currentColor = const Color(0xffFFCC80);
  int colorIndex = 0;
  readNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(ReadNoteSuccess());
  }
}
