import 'package:bloc/bloc.dart';
import 'package:daily_tasks/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:daily_tasks/modules/done_tasks/done_tasks_screen.dart';
import 'package:daily_tasks/modules/new_tasks/new_tasks_screen.dart';
import 'package:daily_tasks/sheared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    ArchivedTasksScreen(),
    DoneTasksScreen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeButtomNavBarState());
  }

}