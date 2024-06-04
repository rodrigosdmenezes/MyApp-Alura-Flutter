import 'package:app_flutter_alura/components/task.dart';
import 'package:app_flutter_alura/data/taskInherited.dart';
import 'package:app_flutter_alura/screens/formScreen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Container(),
        title: const Text(
          'Tarefas',
          selectionColor: Colors.white,
        ),
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => FormScreen()),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
