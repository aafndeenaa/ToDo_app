import 'package:flutter/material.dart';
import 'package:todo_app_c5/ui/home_screen/add_task_sheet.dart';
import 'package:todo_app_c5/ui/setting_screen/setting_screen.dart';
import 'package:todo_app_c5/ui/tasks_screen/task_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> screens = [TasksScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('To Do '),
      // ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showAddTaskBottomSheet();
        },
        shape: StadiumBorder(
            side: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary, width: 4)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
        ),
      ),
    );
  }

  void showAddTaskBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return AddTaskBottomSheet();
        });
  }
}
