import 'package:flutter/material.dart';
import 'package:todo_app/components/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // save button
                MyButton(text: "Save", onPressed: () {}),

                // cancel button
                MyButton(text: "Cancel", onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
