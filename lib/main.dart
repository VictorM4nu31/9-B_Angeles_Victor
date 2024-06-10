import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Golden Sun Posts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra Superior'),
      ),
      body: ListView(
        children: [
          PostWidget(
            username: "oso mentiroso",
            content:
                "Golden Sun es uno de los mejores RPGs de Game Boy Advance. Con su excelente historia y gráficos impresionantes, es un juego que todos deberían probar.",
            imageUrl: 'assets/golden_sun.jpg',
          ),
          PostWidget(
            username: "Alex Martinez",
            content:
                "La serie Golden Sun tiene una jugabilidad increíble con puzles interesantes y combates estratégicos. ¡Un clásico que sigue siendo divertido!",
            imageUrl: 'assets/golden_sun_battle.jpg',
          ),
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String username;
  final String content;
  final String imageUrl;

  PostWidget(
      {required this.username, required this.content, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(content),
            SizedBox(height: 10.0),
            Image.asset(imageUrl),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Me gusta!'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Comenta'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Compartir'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
