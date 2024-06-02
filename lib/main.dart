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

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;
  const Task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.blue),
                height: 140,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white),
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.black26),
                          width: 72,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              widget.foto,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              child: (Text(widget.nome,
                                  style: TextStyle(
                                      fontSize: 24,
                                      overflow: TextOverflow.ellipsis))),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.stars,
                                  size: 15,
                                  color: (widget.dificuldade >= 5)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                                Icon(
                                  Icons.stars,
                                  size: 15,
                                  color: (widget.dificuldade >= 5)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                                Icon(
                                  Icons.stars,
                                  size: 15,
                                  color: (widget.dificuldade >= 5)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                                Icon(
                                  Icons.stars,
                                  size: 15,
                                  color: (widget.dificuldade >= 5)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                                Icon(
                                  Icons.stars,
                                  size: 15,
                                  color: (widget.dificuldade >= 5)
                                      ? Colors.blue
                                      : Colors.blue[100],
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 82,
                          width: 82,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  nivel++;
                                });
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.arrow_drop_up),
                                  Text(
                                    "UP",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          child: LinearProgressIndicator(
                            color: Colors.white,
                            value: (widget.dificuldade > 0)
                                ? (nivel / widget.dificuldade) / 10
                                : 1,
                          ),
                          width: 200,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Nível: $nivel',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
