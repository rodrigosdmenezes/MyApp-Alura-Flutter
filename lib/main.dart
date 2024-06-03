import 'package:app_flutter_alura/difficulty.dart';
import 'package:app_flutter_alura/task.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 3, 58, 240)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Container(),
          title: Text(
            'Tarefas',
            selectionColor: Colors.white,
          ),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 1000),
          child: ListView(
            children: [
              Task(
                  'Aprender Flutter',
                  'https://docs.flutter.dev/assets/images/dash/Dashatars.png',
                  5),
              Task(
                  'Andar de bike',
                  'https://salvape.com.br/blog/wp-content/uploads/2018/08/230978-reservado-priscila-pfique-por-dentro-dos-beneficios-de-andar-de-bicicleta.jpg',
                  3),
              Task(
                  'Andar de Skate',
                  'https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcQro3ggXhRPYNm_1rvLFGrZ7DhCdB8dw4qw_bTTg_xnbZNVSQSzREaT-HGR0PcDFyqY',
                  5),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}


