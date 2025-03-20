import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bart.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(icon: Icons.search ,title: 'Edit',)
        ],
      ),
    );
  }
}
