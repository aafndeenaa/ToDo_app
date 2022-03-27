import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  String title = '';
  String description = '';
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(12),
                topRight: const Radius.circular(12))),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.copyWith(color: Colors.black),
            ),
            Form(
                key: formController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Title'),
                      onChanged: (text) {
                        title = text;
                      },
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'please enter title';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      minLines: 3,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        labelText: 'description',
                      ),
                      onChanged: (text) {
                        description = text;
                      },
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'please enter task description';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text('Task Date'),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                        onTap: () {
                          chooseDate();
                        },
                        child: Text(
                          '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}',
                          textAlign: TextAlign.center,
                        )),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  addTask();
                },
                child: const Text('Add Task'))
          ],
        ),
      ),
    );
  }

// how to format date time
  void chooseDate() async {
    var chosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365)));

    if (chosenDate != null) {
      selectedDate = chosenDate;
      setState(() {});
    }
  }

  void addTask() {
    if (formController.currentState?.validate() == true) {
      // insert task
      // title,desc
    }
  }
}
