import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> colors = [
    Colors.black,
    Colors.indigo,
    Colors.blue,
    Colors.cyan,
    Colors.brown,
    Colors.amber,
    Colors.orange,
    Colors.lime,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.red,
    Colors.grey,
    Colors.greenAccent,
    Colors.green,
    Colors.teal,
  ];

  double index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colors[index.toInt()],
              colors[index.toInt() + 1],
              colors[index.toInt() + 2],
              colors[index.toInt() + 3],
              colors[index.toInt() + 4],
            ],
          ),
        ),
        child: Slider(
          onChanged: (value) => {
            setState(() {
              index = value;
            })
          },
          value: index,
          min: 0,
          max: 10,
        ),
      ),
    );
  }
}
