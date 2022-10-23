import 'package:flutter/material.dart';
import 'package:project_01/components/tasks.dart';

class TaskInherit extends InheritedWidget {
  TaskInherit({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task("Learn Flutter",
        "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large", 5),
    Task(
        "Develop my first app",
        "https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg",
        2),
    Task(
        "Upload to github",
        "https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg",
        3),
    Task(
      "Add project to portfolio",
      "https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg",
      5,
    ),
  ];

  void newTask(String name, String photo, int imp) {
    taskList.add(
      Task(name, photo, imp),
    );
  }

  static TaskInherit of(BuildContext context) {
    final TaskInherit? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherit>();
    assert(result != null, 'No TaskInherit found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherit oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
