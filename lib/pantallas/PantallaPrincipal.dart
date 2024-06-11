import 'package:flutter/material.dart';
import 'package:golden_sun_posts/widgets/PostCard.dart';
import 'package:golden_sun_posts/datos/datos.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Red Social'),
      ),
      body: ListView.builder(
        itemCount: listaCards.length,
        itemBuilder: (context, index) {
          final card = listaCards[index];
          return PostCard(
            username: card['nombre']!,
            content: card['descripcion']!,
            imageUrl: card['imagen']!,
          );
        },
      ),
    );
  }
}
