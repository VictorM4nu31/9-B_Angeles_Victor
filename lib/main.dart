import 'package:flutter/material.dart';
import 'package:golden_sun_posts/pantallas/PantallaPrincipal.dart';
import 'package:golden_sun_posts/pantallas/BuscarPagina.dart';
import 'package:golden_sun_posts/pantallas/AnadirContenidoPagina.dart';
import 'package:golden_sun_posts/pantallas/TerminosCondicionesPagina.dart';
import 'package:golden_sun_posts/pantallas/FormularioPagina.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // quita la etiqueta roja de debug
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaPrincipal(),
        '/buscar': (context) => const BuscarPagina(),
        '/anadir': (context) => const AnadirContenidoPagina(),
        '/terminos': (context) => const TerminosCondicionesPagina(),
        '/formulario': (context) => const FormularioPagina(),
      },
    );
  }
}
