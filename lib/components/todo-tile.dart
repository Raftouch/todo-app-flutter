import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            // value --> true or false // onChanged --> switch between true or false
            Checkbox(value: value, onChanged: onChanged)
            Text("Walk my dog"),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
