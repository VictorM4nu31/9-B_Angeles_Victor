import 'package:flutter/material.dart';
import 'package:golden_sun_posts/widgets/PostCard.dart';
import 'package:golden_sun_posts/datos/datos.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App chida'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/terminos');
              },
              child: const Text('Términos y Condiciones'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Principal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Añadir',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/buscar');
              break;
            case 2:
              Navigator.pushNamed(context, '/anadir');
              break;
          }
        },
      ),
    );
  }
}
