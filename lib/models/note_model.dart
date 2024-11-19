import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 1)
class NoteModel extends HiveObject {
  @HiveField(1)
  final String noteTitle;

  @HiveField(2)
  final String noteDesc;

  @HiveField(3)
  final DateTime date;

  @HiveField(4)
  final int color;

  NoteModel({
    required this.noteTitle,
    required this.noteDesc,
    required this.date,
    required this.color,
  });
}
