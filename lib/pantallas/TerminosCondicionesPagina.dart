import 'package:flutter/material.dart';

class TerminosCondicionesPagina extends StatelessWidget {
  const TerminosCondicionesPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Términos y Condiciones'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '🌮 Términos y Condiciones Picantes 🌶️',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '''Prohibido aburrirse. Si te aburres, tendrás que pagar una multa de 100 tacos al mes.
Las fotos de comida se consideran un arte mayor. Cualquier burla será castigada con la eliminación de tu cuenta.
Los emojis se usarán sin restricciones. Entre más mejor 😎🥑🌵🎉
Nos reservamos el derecho de añadir reglas aleatorias en cualquier momento. Tómalo o déjalo 🤷
Si tu publicación no recibe al menos 20 'me gusta' en la primera hora, serás desterrado a MySpace.
Todos los miércoles se celebrará el 'Meme Miércoles'. Publicación de memes será obligatoria.
Queda prohibido presumir de tener vida social los fines de semana.
La política de privacidad es: ¿privacidad? ¿Qué es eso?
Erreply a este contrato comentando un gif gracioso para aceptar los términos.
¡Disfruta y no olvides reír! 🤪''',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
