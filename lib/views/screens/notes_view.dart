import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_buttom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return AddNoteButtomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
