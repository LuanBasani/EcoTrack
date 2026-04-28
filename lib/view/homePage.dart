import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/ecoController.dart';
import 'dashboardPage.dart';
import 'habitosPage.dart';
import 'configuracoesPage.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<EcoController>(context);

    final telas = [
      const DashboardPage(),
      const HabitosPage(),
      const ConfiguracoesPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoTrack'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Center(
              child: Text('${controller.pontuacao} pts'),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                'EcoTrack',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              onTap: (){
                controller.alterarTela(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.eco),
              title: const Text('Hábitos'),
              onTap: (){
                controller.alterarTela(1);
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: (){
                controller.alterarTela(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('Ajuda'),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),

      body: telas[controller.telaSelecionada],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.telaSelecionada,
        onTap: controller.alterarTela,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.eco),
            label: 'Hábitos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações',
            ),
            ]
        ),
    );
  }
}
