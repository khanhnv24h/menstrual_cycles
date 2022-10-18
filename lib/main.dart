import 'package:app_menstrual_cycles/bloc/tasks_bloc.dart';
import 'package:app_menstrual_cycles/models/task_model.dart';
import 'package:app_menstrual_cycles/models/user_model.dart';
import 'package:app_menstrual_cycles/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc()
        ..add(AddTask(
          task: TaskModel(title: 'Task1'),
        )),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Demo',
        theme: ThemeData(
          primaryColor: Colors.pink[200],
          primarySwatch: Colors.pink,
          buttonColor: Colors.pinkAccent,
          accentColor: Colors.pinkAccent,
          fontFamily: 'Lato',
        ),
        home: MainScreen(),
      ),
    );
  }
}
