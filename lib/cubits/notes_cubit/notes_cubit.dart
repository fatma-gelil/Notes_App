import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesList;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
     notesList = notesBox.values.toList();
  }
}
