import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/ecoController.dart';
class ConfiguracoesPage extends StatelessWidget {
  const ConfiguracoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<EcoController>(context);

    return ListView(
      children: [
        SwitchListTile(
          title: const Text('Modo Escuro'),
          value: controller.modoEscuro, 
          onChanged: (valor) {
            controller.toggleModoEscuro();
          }
        ),

        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Nome do usuário'),
          subtitle: Text(controller.nomeUsuario),
          trailing: const Icon(Icons.edit),
          onTap: () {
            editarNome(context, controller);
          },
        ),

        ListTile(
          leading: const Icon(Icons.delete_outline),
          title: const Text('Limpar hábitos concluídos'),
          subtitle: const Text('Volta os hábitos para pendentes'),
          onTap: () {
            controller.resetarHabitos();
          },
        ),

        const ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('Sobre o app'),
          subtitle: Text('EcoTrack - Controle de hábitos sustentáveis'),
        ),
      ],
    );
  }
  void editarNome(BuildContext context, EcoController controller) {
    final nomeController = TextEditingController(
      text: controller.nomeUsuario,
    );

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Alterar nome'),

          // Campo para digitar o nome
          content: TextField(
            controller: nomeController,
            decoration: const InputDecoration(
              labelText: 'Digite seu nome',
            ),
          ),

          actions: [
            // Fecha sem salvar
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),

            // Salva o nome
            ElevatedButton(
              onPressed: () {
                controller.atualizarNome(nomeController.text);
                Navigator.pop(context);
              },
              child: const Text('Salvar'),
            ),
          ],
        );
      },
    );
  }
}
