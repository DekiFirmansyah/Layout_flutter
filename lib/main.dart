import 'package:flutter/material.dart';

import 'component/berita.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          backgroundColor: Colors.amber,
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'BERITA TERBARU',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'open sans',
                    ),
                  ),
                  Text(
                    'PERTANDINGAN HARI INI',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'open sans',
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.network(
                    'https://i.pinimg.com/564x/30/df/01/30df01af8b1b028d163d42884327df91.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                  // ignore: prefer_const_constructors
                  Container(
                    color: Colors.white,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(12.0),
                    child: const Text(
                      'Timnas Garuda TC Di Eropa',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'open sans',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Training Camp',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'open sans',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const berita(),
            const berita(),
            const berita(),
          ],
        ),
      ),
    );
  }
}
