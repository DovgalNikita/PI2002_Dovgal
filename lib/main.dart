import 'package:flutter/material.dart';

/**
 *
 * Старт 4 лабы
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
        home: const MyHomePage(title: 'Общежития КубГАУ'));
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

  final String urlCampus = 'assets/images/campus.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle:true,
        backgroundColor: Colors.green[700],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Expanded(child: Image.asset(urlCampus,))
          ),
          const Divider(),
          Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("Общежитие 20", style: TextStyle(fontSize:20.0,fontWeight: FontWeight.w500)),
                        Text("Краснодар, ул. Калинина, 13", style: TextStyle(fontSize:15.0))
                      ],
                    ),
                    Row(
                      children:[
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 24.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        )
                    ]
                    )
                  ],
                )
              ],
          )
        ],
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
