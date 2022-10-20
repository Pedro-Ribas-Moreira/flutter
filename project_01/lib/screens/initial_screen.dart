import 'package:flutter/material.dart';
import 'package:project_01/components/tasks.dart';

class InitialView extends StatefulWidget {
  const InitialView({Key? key}) : super(key: key);

  @override
  State<InitialView> createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  bool opacity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Tasks"),
      ),
      body: Container(
        color: const Color(0xffE5E5E5),
        child: AnimatedOpacity(
          opacity: (opacity) ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: ListView(
            children: const [
              Task(
                  "Learn Flutter",
                  "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
                  5),
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
                  5),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        child: Icon(opacity ? Icons.remove : Icons.remove_red_eye),
      ),
    );
  }
}
