import 'package:flutter/material.dart';
import 'package:project_01/components/tasks.dart';
// import 'package:project_01/components/tasks.dart';
import 'package:project_01/data/task_inherited.dart';
import 'form_screen.dart';

class InitialView extends StatefulWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  State<InitialView> createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  // double getTotalLvl() {
  //   double total = 0;
  //   int count = TaskInherit.of(context).taskList.length;
  //
  //   for (int i = 0; i < count; i++) {
  //     total = total + TaskInherit.of(context).taskList[i].lvl;
  //   }
  //   return total;
  // }
  //
  // double getMaxLvl() {
  //   double maxLvl = 0;
  //   int count = TaskInherit.of(context).taskList.length;
  //   for (int i = 0; i < count; i++) {
  //     maxLvl = maxLvl + TaskInherit.of(context).taskList[i].importance;
  //   }
  //   return maxLvl;
  // }
  // TaskInherit.of(context).taskList.length
  // TaskInherit.of(context).taskList[0].lvl

  @override
  Widget build(BuildContext context) {
    double maxBar = 0;
    int sumLvl = 0;
    int sumImp = 0;
    for (Task i in TaskInherit.of(context).taskList) {
      sumLvl += i.lvl;
      sumImp += i.importance;
    }
    maxBar += (sumLvl / sumImp) / 10;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Tasks"),
            SizedBox(
              width: 200,
              child: LinearProgressIndicator(
                color: Colors.white,
                value: maxBar,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              iconSize: 42,
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 8, bottom: 70),
        children: TaskInherit.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormView(
                taskContext: context,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
