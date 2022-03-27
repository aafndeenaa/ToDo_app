import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime(2019, 1, 1),
            lastDate: DateTime(2025, 12, 30),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.black54,
            dayColor: Theme.of(context).colorScheme.onSurface,
            activeDayColor: Theme.of(context).colorScheme.primary,
            activeBackgroundDayColor: Theme.of(context).colorScheme.onPrimary,
            dotsColor: Color(0xFF333A47),
            selectableDayPredicate: (date) => date.day != 23,
            locale: 'en_ISO',
          )
        ],
      ),
    );
  }
}
