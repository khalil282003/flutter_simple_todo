import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/profile_page.dart';
import 'tasks_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App Home Page'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(221, 163, 232, 1),
      ),
      backgroundColor: const Color.fromRGBO(230, 219, 241, 1),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Text(
              "Welcome To This Task Manager App",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(height: 200),
            const Text(
              "Where would you like to go?",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Row(
                    children: [
                      Text("Tasks"),
                      Icon(Icons.task),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TasksPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  child: const Row(
                    children: [
                      Text("Profile"),
                      Icon(CupertinoIcons.profile_circled),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}