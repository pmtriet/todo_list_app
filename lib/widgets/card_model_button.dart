import 'package:flutter/material.dart';

class ModalButton extends StatelessWidget {
  ModalButton({
    super.key,
    required this.addTask,
  });
  final Function addTask;

  String textValue = "";

  void _handleOnClicked(BuildContext context) {
    final name = textValue;
    if (name.isEmpty) return;
    addTask(name);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                textValue = text;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Your task",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _handleOnClicked(context),
                child: const Text('Add task'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
