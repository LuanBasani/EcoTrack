import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/ecoController.dart';

class HabitosPage extends StatelessWidget {
  const HabitosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Pendentes'),
              Tab(text: 'Concluidos'),
            ],
          ),

          Expanded(
            child: TabBarView(
              children: [
                _ListaPendentes(),
                _ListaConcluidas(),
              ]
            ),
          ),
        ],
      ),
    );
  }
}

class _ListaPendentes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<EcoController>(context);

    if (controller.habitosPendentes.isEmpty){
      return const Center(
        child: Text('Nenhum hábito pendente'),
      );
    }

    return ListView.builder(
      itemCount: controller.habitosPendentes.length,
      itemBuilder: (context, index) {
        final habito = controller.habitosPendentes[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),

          child: ListTile(
            leading: Text(
              habito.icone,
              style: const TextStyle(fontSize: 24),
            ),

            title: Text(habito.titulo),
            trailing: ElevatedButton(
              onPressed: () {
                controller.concluirHabito(habito);
              },
              child: const Text('Concluir'),
            ), 
          ),
        );
      }
    );
  }
}

class _ListaConcluidas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<EcoController>(context);

    if (controller.habitosConcluidos.isEmpty){
      return const Center(
        child: Text('Nenhum hábito concluído'),
      );
    }

    return ListView.builder(
      itemCount: controller.habitosConcluidos.length,
      itemBuilder: (context, index) {
        final habito = controller.habitosConcluidos[index];

        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),

          child: ListTile(
            leading: Text(
              habito.icone,
              style: const TextStyle(fontSize: 24),
            ),

            title: Text(habito.titulo),

            trailing: const Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),
        );
      }
    );
  }
}