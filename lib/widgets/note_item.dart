import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 12),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Build your career with Mahmoud Elsayed',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.delete, size: 30, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text('May21,2023',
                  style: TextStyle(color: Colors.black.withOpacity(0.6))),
            )
          ],
        ),
      ),
    );
  }
}
