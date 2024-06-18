import 'package:flutter/material.dart';

class AnadirContenidoPagina extends StatelessWidget {
  const AnadirContenidoPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Añadir Contenido'),
      ),
      body: const Center(
        child: Text('Página para añadir contenido'),
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
        currentIndex: 2,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/buscar');
              break;
            case 2:
              Navigator.pushNamed(context, '/añadir');
              break;
          }
        },
      ),
    );
  }
}
