import 'package:flutter/material.dart';
import 'dart:math';

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
        home: const MyHomePage(title: 'Lab6_Dovgal'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    final _inputText1 = TextEditingController();
    final _inputText2 = TextEditingController();
    bool _validate1 = false;
    bool _validate2 = false;
    double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(
                  children:[
                    Text(
                      "Ширина прямоугольника",
                      style:TextStyle(fontSize: 20.0),
                    ),
                    TextField(
                      controller: _inputText1,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width:3,color:Colors.greenAccent,
                          ),
                        ),
                        labelText: 'Введите высоту',
                        errorText:_validate1?'Введите значение':null,
                      ),
                    ),
                ]
                )
          ),
          Container(
              padding: const EdgeInsets.all(20.0),
              child:
              Column(
                  children:[
                    Text(
                      "Высота прямоугольника",
                      style:TextStyle(fontSize: 20.0),
                    ),
                    TextField(
                      controller: _inputText2,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width:3,color:Colors.greenAccent,
                          ),
                        ),
                        labelText: 'Введите ширину',
                        errorText:_validate2?'Введите значение':null,
                      ),
                    ),
                  ]
              )
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              if(_inputText1.text.isEmpty){
                _validate1 = true;
              }else if(_inputText2.text.isEmpty){
                _validate2 = true;
              }else{
                _validate1 = false;
                _validate2 = false;
                value = double.parse(_inputText1.text) * double.parse(_inputText2.text);
              }
            });
          }, child: Text("Расчитать")),
          Container(
            margin: EdgeInsets.only(top:20.0),
            child: Text(
              "Площадь прямоугольника = $value",
              style:TextStyle(fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
          )
        ],
      )
    );
  }

}

