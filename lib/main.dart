import 'package:flutter/material.dart';

/**
 *
 * Черновик для мерджа с ветками
 * здесь проходит вся основная работа над лабами/курсовой
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
        home: const MyHomePage(title: 'Lab3_Dovgal'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Значение инкремента'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              FloatingActionButton(
                onPressed: _decrementCounter,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                tooltip: 'Increment',
                backgroundColor: Colors.green,
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: _incrementCounter,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                tooltip: 'Increment',
                backgroundColor: Colors.red,
                child: const Icon(Icons.add),
              ),
            ]),
            ElevatedButton(
              onPressed: _resetCounter,
              child: Text("Сбросить",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                  )),
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                shadowColor: Colors.transparent,
                primary: Colors.grey[50],
                minimumSize: Size(100.0, 50.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Инкремент"),
//           centerTitle: true,
//           backgroundColor: Colors.grey[800],
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//           ),
//         ),
//         backgroundColor: Colors.grey[800],
//         floatingActionButton: FloatingActionButton(
//           onPressed: (){},
//           tooltip: 'Increment',
//           child: const Icon(Icons.add),
//         ),
//       ),
//     ),
//   );
// }
