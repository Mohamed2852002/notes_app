import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<NoteStates> {
  AddNoteCubit() : super(NoNoteState());
  final List<NoteModel> notes = [
    NoteModel(
      noteTitle: 'noteTitle',
      noteDesc: 'noteDesc',
      color: 0,
      date: DateTime.now(),
    ),
    NoteModel(
      noteTitle: 'noteTitle',
      noteDesc: 'noteDesc',
      color: 0,
      date: DateTime.now(),
    ),
  ];
  addNote() {}
}
