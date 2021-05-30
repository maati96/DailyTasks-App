import 'package:conditional_builder/conditional_builder.dart';
import 'package:daily_tasks/sheared/components.dart';
import 'package:daily_tasks/sheared/constants.dart';
import 'package:daily_tasks/sheared/cubit/cubit.dart';
import 'package:daily_tasks/sheared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var tasks = AppCubit.get(context).newTasks;
        return tasksBuilder(tasks: tasks);
      },
    );
  }
}
