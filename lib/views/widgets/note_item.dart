import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/screens/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  //final Color bgColor;
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  noteModel.title,
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    noteModel.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  noteModel.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
