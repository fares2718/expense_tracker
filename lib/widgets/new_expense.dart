import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(label: const Text('Title')),
          ),
          Row(
            children: [
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixText: '\$',
                  label: const Text('Amount')),
              ),
              //date
            ],
          ),
          Row(
            //category
            children: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: const Text('Cancele')),
              const Spacer(),
              ElevatedButton(onPressed: () {}, child: const Text('Save')),
            ],
          ),
        ],
      ),
    );
  }
}
