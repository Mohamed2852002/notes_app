import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/delete_note_cubit/delete_note_state.dart';

class DeleteNoteCubit extends Cubit<DeleteNoteState> {
  DeleteNoteCubit() : super(DeleteNoteInitial());
}
