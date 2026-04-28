import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/ecoController.dart';
import 'view/splashPage.dart';

void main() {
  runApp(
    // Provider usado no app inteiro
    ChangeNotifierProvider(
      create: (_) => EcoController(),
      child: const EcoApp(),
    ),
  );
}

class EcoApp extends StatelessWidget {
  const EcoApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Pegando o controller
    final controller = Provider.of<EcoController>(context);

    return MaterialApp(
      title: 'EcoTrack',
      debugShowCheckedModeBanner: false,

      // Tema claro
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
      ),

      // Tema escuro
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),

      // Escolhe o tema pelo controller
      themeMode: controller.modoEscuro ? ThemeMode.dark : ThemeMode.light,

      // Primeira tela do app
      home: const SplashPage(),
    );
  }
}