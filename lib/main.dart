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
  int _counter = 27;
  Color _color = Colors.black;
  final String urlCampus = 'assets/images/campus.jpg';
  String alertInnerText='';

  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Отмена"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Продолжить"),
      onPressed:  () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Подтвердите действие"),
      content: Text(alertInnerText),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                urlCampus,
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Общежитие №20",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Краснодар, ул. Калинина, 13",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                            setState(() {
                              if (_counter==27){
                                _counter++;
                                _color = Colors.red;
                              }else{
                                _counter--;
                                _color = Colors.black;
                              }
                            });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: _color,
                        ),
                      ),
                      Text(
                        '$_counter',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left:20,right:20),
              margin: EdgeInsets.only(top:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Column(
                    children:[
                      IconButton(onPressed: () {
                        alertInnerText="+7-938-878-1001";
                        showAlertDialog(context);
                      }, icon: Icon (Icons.phone, color: Colors.green,),),
                      Text("Позвонить", style: TextStyle(color:Colors.green, fontSize:15))
                    ],
                  ),
                  Column(
                    children:[
                      IconButton(onPressed: () {
                        alertInnerText="Перейти в Яндекс.Карты?";
                        showAlertDialog(context);
                      }, icon: Icon (Icons.near_me, color: Colors.green,),),
                      Text("Маршрут", style: TextStyle(color:Colors.green, fontSize: 15))
                    ]
                  ),
                  Column(
                      children:[
                        IconButton(onPressed: () {
                          alertInnerText="Перейти во Вконтакте?";
                          showAlertDialog(context);
                        }, icon: Icon (Icons.share, color: Colors.green,),),
                        Text("Поделиться", style: TextStyle(color:Colors.green, fontSize: 15))
                      ]
                  )
                ]
              )
            ),
            Container(
              padding: EdgeInsets.only(left:20,right:20),
              margin: EdgeInsets.only(top:20),
              child: Text("Общежитие 20 в Кубанском государственном аграрном университете является "
                  "одним из самых популярных мест проживания для студентов и преподавателей университета. "
                  "Общежитие находится в центре города Краснодара и окружено прекрасными парками и зелеными "
                  "зонами. Общежитие предлагает студентам и преподавателям комфортные условия проживания. В "
                  "нем есть большие комнаты с двуспальными кроватями, шкафами, столами и стульями. Также в "
                  "общежитии есть общая кухня, где можно приготовить пищу, а также общий душ и туалет. В "
                  "общежитии есть бесплатный Wi-Fi, а также прачечная и прочие удобства. Общежитие охраняется и "
                  "постоянно проходят проверки безопасности. В общежитии есть студенческий клуб, где можно "
                  "проводить досуг и организовывать различные мероприятия. В общежитии есть профессиональные "
                  "персональные консультанты, которые помогут студентам и преподавателям с любыми вопросами и "
                  "проблемами.", style: TextStyle(color: Colors. black,fontSize:15))
            )
          ],
        ),
      ),
    );
  }
}
