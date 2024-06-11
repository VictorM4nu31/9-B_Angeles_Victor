import 'package:flutter/material.dart';
import 'package:golden_sun_posts/pantallas/PantallaPrincipal.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // quita la etiqueta roja de debug
      title: 'Material App',
      home: PantallaPrincipal(),
    );
  }
}
