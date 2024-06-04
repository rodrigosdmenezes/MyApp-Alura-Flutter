import 'package:app_flutter_alura/components/task.dart';
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
        children: const [
          Task('Aprender Flutter', 'assets/images/Dashatars.png', 5),
          Task('Andar de bike', 'assets/images/bike.jpg', 3),
          Task('Andar de Skate', 'assets/images/skate.jpeg', 5),
          SizedBox(
            height: 80,
          )
        ],
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
