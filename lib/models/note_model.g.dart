// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteModelAdapter extends TypeAdapter<NoteModel> {
  @override
  final int typeId = 1;

  @override
  NoteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteModel(
      noteTitle: fields[1] as String,
      noteDesc: fields[2] as String,
      date: fields[3] as DateTime,
      color: fields[4] as int,
      colorIndex: fields[6] as int?,
    )..fadingIndex = fields[5] as double?;
  }

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.noteTitle)
      ..writeByte(2)
      ..write(obj.noteDesc)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.color)
      ..writeByte(5)
      ..write(obj.fadingIndex)
      ..writeByte(6)
      ..write(obj.colorIndex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
