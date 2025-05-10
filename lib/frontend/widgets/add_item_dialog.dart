import 'package:flutter/material.dart';

class AddItemDialog extends StatelessWidget {
  final Function()? onAddItem;
  const AddItemDialog({super.key, this.onAddItem});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Item'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Item Name'),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: const InputDecoration(labelText: 'Item Description'),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: onAddItem,
          child: const Text('Add'),
        ),
          ],
        ),
      ],
    );
  }
}