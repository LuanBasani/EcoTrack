import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/ecoController.dart';

// Tela do dashboard
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Pega o controller
    final controller = Provider.of<EcoController>(context);

    // Lista dos cards do dashboard
    final cards = [
      {
        'titulo': 'Concluídos',
        'valor': '${controller.habitosConcluidos.length}',
        'icone': Icons.check_circle,
      },
      {
        'titulo': 'Pendentes',
        'valor': '${controller.habitosPendentes.length}',
        'icone': Icons.pending,
      },
      {
        'titulo': 'Pontuação',
        'valor': '${controller.pontuacao} pts',
        'icone': Icons.star,
      },
      {
        'titulo': 'Meta Semanal',
        'valor': '${(controller.metaSemanal * 100).toStringAsFixed(0)}%',
        'icone': Icons.flag,
      },
      {
        'titulo': 'Nível',
        'valor': controller.nivel,
        'icone': Icons.emoji_events,
      },
      {
        'titulo': 'Impacto',
        'valor': '${controller.impacto} kg CO₂',
        'icone': Icons.cloud,
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(12),

      // Grade de cards
      child: GridView.builder(
        itemCount: cards.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),

        itemBuilder: (context, index) {
          final card = cards[index];

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12),

              // Conteúdo do card
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    card['icone'] as IconData,
                    size: 34,
                    color: Colors.green,
                  ),

                  const SizedBox(height: 10),

                  Text(
                    card['valor'] as String,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    card['titulo'] as String,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}