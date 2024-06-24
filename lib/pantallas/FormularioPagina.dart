import 'package:flutter/material.dart';

class FormularioPagina extends StatefulWidget {
  const FormularioPagina({super.key});

  @override
  FormularioPaginaState createState() => FormularioPaginaState();
}

class FormularioPaginaState extends State<FormularioPagina> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingresa tu correo';
    }
    final emailRegex = RegExp(
        r'^[^@]+@((gmail|hotmail|outlook|live|msn|yahoo|icloud|aol|mail|gmx|protonmail)\.[a-z]{2,3})$');
    if (!emailRegex.hasMatch(value)) {
      return 'Por favor ingresa un correo electrónico válido';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingresa tu contraseña';
    }
    if (value.length < 8) {
      return 'La contraseña debe tener al menos 8 caracteres';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario de Ingreso'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Se requiere correo y contraseña',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Correo electrónico'),
                    validator: _validateEmail,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Contraseña'),
                    obscureText: true,
                    validator: _validatePassword,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Process data
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Procesando datos')),
                        );
                      }
                    },
                    child: const Text('Validar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
