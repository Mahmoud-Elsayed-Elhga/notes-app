import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NoteBottomSheetForm extends StatefulWidget {
  const NoteBottomSheetForm({
    super.key,
  });

  @override
  State<NoteBottomSheetForm> createState() => _NoteBottomSheetFormState();
}

class _NoteBottomSheetFormState extends State<NoteBottomSheetForm> {
  final GlobalKey<FormState> formKey =
      GlobalKey(); //اول حاجه بعملها للفورم اني اعملها key و اديهولها تحت
  AutovalidateMode autovalidateMode =
      AutovalidateMode.disabled; //دا عشان اظهر لليوزر الايرور لما يدخل حاجه غلط

  String? title, content;
//   اي متغير مش
// final
// لازم يبقا في
// StatefulWidget

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey, // اديته ال key
      autovalidateMode: autovalidateMode, // اديته ال autovalidateMode
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) {
              content = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 32),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save(); // كدا اتاكدت انها مش ب null
                NoteModel note = NoteModel(
                    title: title!,
                    subtitle: content!,
                    date: DateTime.now().toString(),
                    color: Colors.greenAccent.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                autovalidateMode = AutovalidateMode
                    .always; //معناها انها null  فهيجيبلي ايرور احمر لليوزر
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
