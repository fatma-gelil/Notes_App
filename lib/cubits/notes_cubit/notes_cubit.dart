import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notesList;

  void fetchAllNotes() {
    try {
      final notesBox = Hive.box<NoteModel>(kNotesBox);
      notesList = notesBox.values.toList();
      emit(NotesSuccess(notesList!));
    } catch (e) {
      emit(NotesFailure(e.toString())); // Emit failure state if an error occurs
    }
  }
}
