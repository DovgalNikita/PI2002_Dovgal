import 'package:flutter/material.dart';

/**
 *
<<<<<<< HEAD
 * Черновик для мерджа с ветками
 * здесь проходит вся основная работа над лабами/курсовой
=======
 * Старт 4 лабы
>>>>>>> draft
 *
 */

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
        home: const MyHomePage(title: 'Lab5_Dovgal'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: ListView(
        children: const [
            Text("0000", style: TextStyle(fontSize: 20)),
            Divider(),
            Text("0001", style: TextStyle(fontSize: 20)),
            Divider(),
            Text("0010", style: TextStyle(fontSize: 20)),
        ],
      )
    );
  }

}

