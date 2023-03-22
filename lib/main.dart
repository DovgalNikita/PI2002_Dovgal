import 'package:flutter/material.dart';
import 'dart:math';

/**
 *
<<<<<<< HEAD
 * Черновик для мерджа с ветками
 * здесь проходит вся основная работа над лабами/курсовой
=======
 * Старт 7 лабы
>>>>>>> draft
 *
 */

class MainScreen extends StatelessWidget{
  const MainScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Гавное окно")),
      body: Center(child: ElevatedButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => const SecondScreen()));
        },
        child:const Text("Выбрать")
      )
      ),
    );
  }
}


class SecondScreen extends StatelessWidget{
  const SecondScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Второе окно")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                ElevatedButton(
                    onPressed: (){
                      const snackBar = SnackBar(
                        content: Text('Вы выбрали овтет "Да"'),
                      );
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child:const Text("Да")
                ),
                ElevatedButton(
                    onPressed: (){
                      const snackBar = SnackBar(
                        content: Text('Вы выбрали овтет "Нет"'),
                      );
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child:const Text("Нет")
                )
              ]
            )
          ),
        ]
      )
    );
  }
}

void main(){
  runApp(MaterialApp(
      initialRoute: '/',
    routes: {
      '/': (BuildContext context) => const MainScreen(),
      '/second': (BuildContext context) => const SecondScreen()
    }
  ));
}


