import 'package:flutter/material.dart';
import 'homePage.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.eco, size: 100, color: Colors.green,),
            const SizedBox(height: 20),
            const Text('EcoTrack', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
            const SizedBox(height: 12),

            const Text(
              'Acompanhe seus hábitos sustentáveis e veja seu impacto positivo no planeta!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16,)
            ),

            const SizedBox(height: 32),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
              }, 
              child: const Text('Começar')
            )

          ],
        ),
        )
        ),
    );
  }
}