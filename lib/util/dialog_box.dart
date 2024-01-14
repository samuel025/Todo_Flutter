import 'package:flutter/material.dart';
import 'package:testing/util/my_button.dart';

class DialogBox extends StatelessWidget {
   final controller;
   VoidCallback onSave;
   VoidCallback onCancel;

   DialogBox({
    super.key, 
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      // ignore: sized_box_for_whitespace
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task"
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "save", onPressed: onSave),
                const SizedBox(width: 8,),
                MyButton(text: "cancel", onPressed: onCancel) 
              ],
            )
          ]
          ),
      ),
    );
  }
}