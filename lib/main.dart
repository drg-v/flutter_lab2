import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Telegram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text(widget.title, style: TextStyle(fontSize: 25))),
        actions: <Widget>[
          Hero(tag: "hero-search",
            child:
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () => _gotoSearch(context),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Chat(
              heading: "Розробка програмного забезпечення",
              time: "13:38",
              icon: IconData(0xe2ee, fontFamily: 'MaterialIcons'),
              user: "Petro:",
              message: "Повідомлення від Петра",
              color: Colors.green),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "ЧАТ 1",
              time: "13:30",
              icon: IconData(0xe9e7, fontFamily: 'MaterialIcons'),
              user: "Ivan:",
              message: "dlfsjdslfj;sdfjsdkfjdslf;j",
              color: Colors.blue),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "НОВИЙ ЧАТ",
              time: "13:22",
              icon: IconData(0xe2f4, fontFamily: 'MaterialIcons'),
              user: "Worker:",
              message: "I`ve done my work",
              color: Colors.pink),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "СЕКРЕТНИЙ ЧАТ",
              time: "13:15",
              icon: IconData(0xf807, fontFamily: 'MaterialIcons'),
              user: "Incognito:",
              message: "Secret message",
              color: Colors.yellow),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "Розробка пdls;fkslkdfd",
              time: "13:10",
              icon: IconData(0xe2ee, fontFamily: 'MaterialIcons'),
              user: "Admin:",
              message: "configuration",
              color: Colors.purple),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "ЧАТ двплавпвам",
              time: "11:05",
              icon: IconData(0xe9e7, fontFamily: 'MaterialIcons'),
              user: "Stas:",
              message: "dQqqq",
              color: Colors.blue),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "НОВИЙ ЧАТ cvp[dsfp[sdof",
              time: "11:00",
              icon: IconData(0xe2f4, fontFamily: 'MaterialIcons'),
              user: "Creator:",
              message: "Chat has been created",
              color: Colors.pink),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "СЕКРЕТНИЙ ЧАТ",
              time: "10:00",
              icon: IconData(0xf807, fontFamily: 'MaterialIcons'),
              user: "Incognito:",
              message: "Secret message",
              color: Colors.yellow),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "Розробка програмного забезпечення",
              time: "9:38",
              icon: IconData(0xe2ee, fontFamily: 'MaterialIcons'),
              user: "Petro:",
              message: "Повідомлення від Петра",
              color: Colors.green),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "ЧАТ 1",
              time: "9:30",
              icon: IconData(0xe9e7, fontFamily: 'MaterialIcons'),
              user: "Ivan:",
              message: "dlfsjdslfj;sdfjsdkfjdslf;j",
              color: Colors.blue),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "НОВИЙ ЧАТ",
              time: "9:22",
              icon: IconData(0xe2f4, fontFamily: 'MaterialIcons'),
              user: "Worker:",
              message: "I`ve done my work",
              color: Colors.pink),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "СЕКРЕТНИЙ ЧАТ",
              time: "9:15",
              icon: IconData(0xf807, fontFamily: 'MaterialIcons'),
              user: "Incognito:",
              message: "Secret message",
              color: Colors.yellow),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "Розробка пdls;fkslkdfd",
              time: "9:10",
              icon: IconData(0xe2ee, fontFamily: 'MaterialIcons'),
              user: "Admin:",
              message: "configuration",
              color: Colors.purple),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "ЧАТ двплавпвам",
              time: "9:05",
              icon: IconData(0xe9e7, fontFamily: 'MaterialIcons'),
              user: "Stas:",
              message: "dQqqq",
              color: Colors.blue),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "НОВИЙ ЧАТ cvp[dsfp[sdof",
              time: "9:00",
              icon: IconData(0xe2f4, fontFamily: 'MaterialIcons'),
              user: "Creator:",
              message: "Chat has been created",
              color: Colors.pink),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "СЕКРЕТНИЙ ЧАТ",
              time: "8:00",
              icon: IconData(0xf807, fontFamily: 'MaterialIcons'),
              user: "Incognito:",
              message: "Secret message",
              color: Colors.yellow),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _gotoSearch(context),
        tooltip: 'Increment',
        backgroundColor: Colors.amber,
        child: Icon(IconData(0xf67a, fontFamily: 'MaterialIcons'),
            color: Colors.white),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        height: 70,
                        width: 70,
                        child: MaterialButton(
                          shape: CircleBorder(),
                          color: Colors.amber,
                          onPressed: () {},
                          child: Text("V", style: TextStyle(fontSize: 30)),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                        child: Text("Vitalii", style: TextStyle(fontSize: 18))),
                    Text("+380 (50) 777 77 77",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white60))
                  ]),
            ),
            Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
                  child: Icon(
                    IconData(0xf0d9, fontFamily: 'MaterialIcons'),
                    color: Colors.white60,
                    size: 30.0,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: const Text('Нова група',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
            ]),
            Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
                  child: Icon(
                    IconData(0xe491, fontFamily: 'MaterialIcons'),
                    color: Colors.white60,
                    size: 30.0,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: const Text('Контакти',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
            ]),
            Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
                  child: Icon(
                    IconData(0xef1a, fontFamily: 'MaterialIcons'),
                    color: Colors.white60,
                    size: 30.0,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: const Text('Виклики',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
            ]),
            Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
                  child: Icon(
                    IconData(0xf663, fontFamily: 'MaterialIcons'),
                    color: Colors.white60,
                    size: 30.0,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: const Text('Люди поблизу',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
            ]),
            Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
                  child: Icon(
                    IconData(0xf5cf, fontFamily: 'MaterialIcons'),
                    color: Colors.white60,
                    size: 30.0,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: const Text('Збережене',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
            ]),
            Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
                  child: Icon(
                    IconData(0xe57f, fontFamily: 'MaterialIcons'),
                    color: Colors.white60,
                    size: 30.0,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: const Text('Налаштування',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
            ]),
            Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                height: 0.3,
                color: Colors.black),
            Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
                  child: Icon(
                    IconData(0xf278, fontFamily: 'MaterialIcons'),
                    color: Colors.white60,
                    size: 30.0,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: const Text('Запросити друзів',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
            ]),
            Row(children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
                  child: Icon(
                    IconData(0xf7e4,
                        fontFamily: 'MaterialIcons', matchTextDirection: true),
                    color: Colors.white60,
                    size: 30.0,
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: const Text('Можливості Telegram',
                      style:
                      TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
            ]),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  void _gotoSearch(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'hero-rectangle',
                child: Container(width: 400, height: 400, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class Chat extends StatefulWidget {
  final IconData icon;
  final String heading;
  final String time;
  final String user;
  final String message;
  final Color color;
  const Chat(
      {Key? key,
      required this.heading,
      required this.time,
      required this.icon,
      required this.user,
      required this.message,
      required this.color})
      : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
            height: 70,
            child: MaterialButton(
              shape: CircleBorder(),
              color: widget.color,
              padding: EdgeInsets.all(5),
              onPressed: () {},
              child: Icon(
                widget.icon,
                color: Colors.white,
                size: 30.0,
              ),
            )),
        Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(
                        child: SizedBox(
                            height: 25,
                            child: Text(widget.heading,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child:
                            Text(widget.time, style: TextStyle(fontSize: 17))),
                  ]),
                  Row(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 7, 0),
                        child: Text(widget.user,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))),
                    Expanded(
                        child: SizedBox(
                            height: 20,
                            child: Text(widget.message,
                                style: TextStyle(fontSize: 17)))),
                  ]),
                ])))
      ]),
    );
  }
}
