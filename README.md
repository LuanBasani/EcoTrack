# 🌱 EcoTrack – Controle de Hábitos Sustentáveis

O **EcoTrack** é um aplicativo mobile desenvolvido em **Flutter** para ajudar o usuário a acompanhar hábitos sustentáveis no dia a dia.

O projeto foi desenvolvido como parte da **Situação de Aprendizagem Somativa** da disciplina de **Desenvolvimento Mobile com Flutter**, utilizando **Provider** para gerenciamento de estado e organização baseada em **MVC**.

---

## 📱 Sobre o aplicativo

A proposta do EcoTrack é permitir que o usuário acompanhe pequenas ações sustentáveis, como economizar água, separar lixo reciclável, usar garrafa reutilizável e utilizar transporte coletivo.

O aplicativo mostra hábitos pendentes, hábitos concluídos e um dashboard com o resumo do progresso do usuário.

---

## ✅ Funcionalidades

- Tela inicial de apresentação do aplicativo;
- Lista de hábitos sustentáveis pendentes;
- Lista de hábitos concluídos;
- Botão para marcar hábitos como concluídos;
- Dashboard com resumo do progresso;
- Pontuação ecológica;
- Meta semanal;
- Impacto estimado;
- Tela de configurações;
- Modo escuro;
- Alteração do nome do usuário;
- Reset do progresso;
- Navegação com `BottomNavigationBar`;
- Menu lateral com `Drawer`.

---

## 🧠 Modelagem MVC

O projeto foi organizado usando o padrão **MVC**, separando os arquivos em:

```text
lib/
├── main.dart
├── controller/
│   └── ecoController.dart
├── model/
│   └── habito.dart
└── view/
    ├── splashPage.dart
    ├── homePage.dart
    ├── dashboardPage.dart
    ├── habitosPage.dart
    └── configuracoesPage.dart
```

### Model

Responsável por representar os dados do sistema.

Exemplo:

```text
habito.dart
```

### View

Responsável pelas telas e pela interface visual do aplicativo.

Exemplos:

```text
splashPage.dart
homePage.dart
dashboardPage.dart
habitosPage.dart
configuracoesPage.dart
```

### Controller

Responsável pela lógica do sistema e pelo gerenciamento de estado com Provider.

Exemplo:

```text
ecoController.dart
```

---

## 🛠️ Tecnologias utilizadas

| Tecnologia | Uso no projeto |
|---|---|
| 🐦 **Flutter** | Desenvolvimento do aplicativo mobile |
| 🎯 **Dart** | Linguagem usada no projeto |
| 🔄 **Provider** | Gerenciamento de estado |
| 🎨 **Figma** | Criação dos protótipos de média fidelidade |
| 🐙 **GitHub** | Versionamento e entrega do projeto |
| 📄 **Markdown** | Documentação e README do projeto |

---

## 📦 Dependências

No arquivo `pubspec.yaml`, foi utilizado o pacote:

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.2
```

---

## 🎨 Protótipo no Figma

Os protótipos de média fidelidade foram desenvolvidos no Figma.

🔗 Acesse aqui:

[Protótipo EcoTrack – Figma](https://www.figma.com/design/4Kihm9UtPZ7a5D9i3CSw4F/EcoTrack-%E2%80%93-Prot%C3%B3tipos-M%C3%A9dia-Fidelidade?node-id=0-1&t=vpiYnxKbNoGVbmrN-1)

---

## 📚 Documentação

A documentação do projeto foi feita em formato baseado na **ISO/IEC/IEEE 29148:2018**, contendo:

- identificação do documento;
- introdução;
- descrição geral;
- requisitos funcionais;
- requisitos não funcionais;
- uso do Provider;
- estrutura MVC;
- protótipos das telas;
- considerações finais.

📄 Clique abaixo para abrir a documentação:

[➡️ Abrir Documentação do Projeto](documentacao/EcoTrack_Documentacao.md)

> Obs: deixe o arquivo da documentação dentro da pasta `documentacao/` no repositório para esse link funcionar no GitHub.

---

## 🚀 Como executar o projeto

### 1. Clone o repositório

```bash
git clone LINK_DO_REPOSITORIO
```

### 2. Entre na pasta do projeto

```bash
cd ecotrack
```

### 3. Instale as dependências

```bash
flutter pub get
```

### 4. Execute o aplicativo

```bash
flutter run
```

---

## 📸 Telas do aplicativo

O aplicativo possui as seguintes telas:

- **Splash Page:** tela inicial de apresentação;
- **Home Page:** tela principal com AppBar, Drawer e BottomNavigationBar;
- **Dashboard Page:** exibe o resumo dos hábitos e pontuação;
- **Hábitos Page:** mostra hábitos pendentes e concluídos;
- **Configurações Page:** permite alterar tema, nome e resetar progresso.

---

## 👨‍💻 Autor

**Luan Basani**

Projeto desenvolvido para fins acadêmicos no **SENAI Americana**.

---

## 🌎 Objetivo do projeto

O objetivo principal do EcoTrack é mostrar como um aplicativo simples pode ajudar na conscientização ambiental, incentivando pequenas atitudes sustentáveis no dia a dia.

Além disso, o projeto também tem como objetivo praticar conceitos de:

- desenvolvimento mobile com Flutter;
- organização de código;
- gerenciamento de estado com Provider;
- navegação entre telas;
- criação de protótipos;
- documentação de software.
