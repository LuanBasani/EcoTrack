import 'package:flutter/material.dart';
import '../model/habito.dart';

// Controller do aplicativo
// Ele controla os dados e atualiza as telas usando Provider
class EcoController extends ChangeNotifier {
  // Guarda qual tela está selecionada no menu inferior
  int telaSelecionada = 0;

  // Controla se o modo escuro está ativado ou não
  bool modoEscuro = false;

  // Nome do usuário exibido no app
  String nomeUsuario = 'Luan';

  // Lista dos hábitos que ainda não foram concluídos
  List<Habito> habitosPendentes = [
    Habito(id: '1', titulo: 'Separar lixo reciclável', icone: '♻️'),
    Habito(id: '2', titulo: 'Economizar água no banho', icone: '💧'),
    Habito(id: '3', titulo: 'Usar garrafa reutilizável', icone: '🥤'),
    Habito(id: '4', titulo: 'Desligar luzes desnecessárias', icone: '💡'),
    Habito(id: '5', titulo: 'Usar transporte coletivo', icone: '🚌'),
  ];

  // Lista dos hábitos que já foram concluídos
  List<Habito> habitosConcluidos = [];

  // Calcula a pontuação com base nos hábitos concluídos
  int get pontuacao {
    return habitosConcluidos.length * 20;
  }

  // Calcula a porcentagem da meta semanal
  double get metaSemanal {
    return habitosConcluidos.length / 10;
  }

  // Define o nível do usuário de acordo com a pontuação
  String get nivel {
    if (pontuacao >= 100) {
      return 'Avançado';
    } else {
      return 'Iniciante';
    }
  }

  // Calcula o impacto estimado em kg de CO2
  int get impacto {
    return habitosConcluidos.length * 2;
  }

  // Altera a tela selecionada no BottomNavigationBar
  void alterarTela(int index) {
    telaSelecionada = index;
    notifyListeners();
  }

  // Move um hábito da lista de pendentes para concluídos
  void concluirHabito(Habito habito) {
    habitosPendentes.remove(habito);
    habitosConcluidos.add(habito);
    notifyListeners();
  }

  // Volta todos os hábitos para a lista de pendentes
  void resetarHabitos() {
    habitosPendentes.addAll(habitosConcluidos);
    habitosConcluidos.clear();
    notifyListeners();
  }

  // Ativa ou desativa o modo escuro
  void toggleModoEscuro() {
    modoEscuro = !modoEscuro;
    notifyListeners();
  }

  // Atualiza o nome do usuário
  void atualizarNome(String nome) {
    nomeUsuario = nome;
    notifyListeners();
  }
}