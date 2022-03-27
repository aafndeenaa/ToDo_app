import 'package:flutter/material.dart';
import 'package:todo_app_c5/ui/home_screen/home_screen.dart';
import 'package:todo_app_c5/ui/myTheme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
      home: HomeScreen(),
      theme: MyThemeData.lightTheme,
    );
  }
}
