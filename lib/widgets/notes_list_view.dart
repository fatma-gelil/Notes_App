import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [
    Color(0xFFFFD1DC), // Pastel Pink
    Color(0xFFB3E5FC), // Baby Blue
    Color(0xFFC8E6C9), // Mint Green
    Color(0xFFFFF8E1), // Soft Vanilla
    Color(0xFFF5F5DC), // Beige

    Color(0xFFFFE4E1), // Misty Rose
    Color(0xFFAEC6CF), // Light Blue Gray
    Color(0xFFAED581), // Soft Olive
    Color(0xFFFFF3E0), // Peach Fuzz
    Color(0xFFD7CCC8), // Coffee Cream

    Color(0xFFFFC1CC), // Baby Pink
    Color(0xFFD0F0C0), // Tea Green
    Color(0xFFDCEDC8), // Light Pistachio
    Color(0xFFFFE0B2), // Apricot
    Color(0xFFF3E5AB), // Light Tan

    Color(0xFFF8BBD0), // Light Pink
    Color(0xFFE1F5FE), // Ice Blue
    Color(0xFFD0F8E1), // Pastel Mint
    Color(0xFFFFD180), // Light Mango
    Color(0xFFEDE7F6), // Soft Violet Grey

    Color(0xFFFFD6E8), // Blush Pink
    Color(0xFFBBDEFB), // Powder Blue
    Color(0xFFB2DFDB), // Pale Green
    Color(0xFFFDEBD0), // Light Peach
    Color(0xFFDCDBD9), // Pale Grey

    Color(0xFFFFE0F0), // Soft Rose
    Color(0xFF90CAF9), // Sky Blue
    Color(0xFFA3E4D7), // Ocean Green
    Color(0xFFFFECB3), // Soft Banana
    Color(0xFFECEFF1), // Soft Cloud Grey

    Color(0xFFE1BEE7), // Lavender Blush
    Color(0xFF81D4FA), // Aqua Blue
    Color(0xFFCCFFCC), // Light Grass Green
    Color(0xFFFFF9C4), // Pale Yellow
    Color(0xFFF0EAD6), // Light Ivory

    Color(0xFFD8BFD8), // Thistle
    Color(0xFFB2EBF2), // Soft Cyan
    Color(0xFF99DDC8), // Soft Jade
    Color(0xFFFFD700), // Pastel Gold
    Color(0xFFF7F1E3), // Warm Beige

    Color(0xFFD1C4E9), // Soft Lavender
    Color(0xFF80DEEA), // Light Turquoise
    Color(0xFFE6F4EA), // Misty Green
    Color(0xFFFCE4EC), // Pinkish Orange
    Color(0xFFFAE1DD), // Coral Cloud

    Color(0xFFC5CAE9), // Light Periwinkle
    Color(0xFFB2DFDB), // Pastel Teal
    Color(0xFFC5E1A5), // Lime Mist
    Color(0xFFF8E1AA), // Soft Sand
    Color(0xFFCFD8DC), // Cool Blue Grey
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: NoteItem(bgColor: data[index]),
          );
        },
      ),
    );
  }
}
