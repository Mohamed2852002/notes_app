import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 1)
class NoteModel extends HiveObject {
  @HiveField(1)
  String noteTitle;

  @HiveField(2)
  String noteDesc;

  @HiveField(3)
  final DateTime date;

  @HiveField(4)
  int color;

  @HiveField(5)
  double? fadingIndex = 1;

  @HiveField(6)
  int? colorIndex;

  NoteModel({
    required this.noteTitle,
    required this.noteDesc,
    required this.date,
    required this.color,
    required this.colorIndex,
  });
}
