import 'package:notes_app/models/note_model.dart';

sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccess extends NotesState {
  NotesSuccess(List<NoteModel> list);
}
final class NotesFailure extends NotesState {
  NotesFailure(String errorMessage);
}
