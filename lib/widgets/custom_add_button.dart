import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: kprimaryColor, borderRadius: BorderRadius.circular(16)),
      child:  Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
