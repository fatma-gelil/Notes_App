

import 'package:bloc/bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
}
