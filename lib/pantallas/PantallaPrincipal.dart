import 'package:flutter/material.dart';
import 'package:golden_sun_posts/widgets/PostWidget.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra Superior'),
      ),
      body: ListView(
        children: const [
          PostWidget(
            username: "Kris Zamudio",
            content: "Golden Sun es uno de los mejores RPGs de Game Boy Advance. Con su excelente historia y gráficos impresionantes, es un juego que todos deberían probar.",
            imageUrl: 'assets/golden_sun.png',
          ),
          PostWidget(
            username: "Alex Martinez",
            content: "La serie Golden Sun tiene una jugabilidad increíble con puzles interesantes y combates estratégicos. ¡Un clásico que sigue siendo divertido!",
            imageUrl: 'assets/golden_sun_battle.png',
          ),
        ],
      ),
    );
  }
}
