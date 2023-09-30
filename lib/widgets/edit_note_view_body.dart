import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomAppBar(
            text: 'Edit note',
            icon: Icons.check,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hint: 'Title',
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
