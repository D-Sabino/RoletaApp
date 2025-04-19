# RoletaApp 🎡

O **RoletaApp** é um aplicativo Flutter que simula uma roleta interativa. Ele permite que os usuários adicionem opções, girem a roleta e visualizem o resultado do sorteio de forma animada e intuitiva.

---

## 📋 Funcionalidades

- **Adicionar Opções**: Insira opções personalizadas para o sorteio.
- **Remover Opções**: Exclua opções indesejadas da lista.
- **Sortear**: Gire a roleta e visualize o resultado do sorteio.
- **Roleta Animada**: Exibe as opções adicionadas e realiza a animação da roleta.
- **Resultado Automático**: Após a rotação, o resultado é exibido automaticamente.

---

## 🛠️ Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento multiplataforma.
- **Dart**: Linguagem de programação utilizada no Flutter.
- **flutter_fortune_wheel**: Pacote utilizado para criar a animação da roleta.

---

## 🚀 Como Executar o Projeto

### Pré-requisitos

- Flutter instalado na máquina.
- Dispositivo físico ou emulador configurado.

### Passos

1. **Clone o Repositório**:
   ```bash
   git clone https://github.com/D-Sabino/RoletaApp.git
   cd roleta-app

2. **Instale as Dependências**:
   ```bash
   flutter pub get

3. **Execute o aplicativo**:
   ```bash
   flutter run

---

## 📂 Estrutura do Projeto

### Tela Inicial (`main.dart`)

- **Descrição**:
  - Permite ao usuário adicionar opções para o sorteio.
  - Exibe uma lista das opções adicionadas.
  - Possui um botão para navegar para a tela da roleta.

- **Principais Componentes**:
  - `TextField`: Para entrada de texto.
  - `ElevatedButton`: Para adicionar opções e navegar para a roleta.
  - `ListView`: Para exibir as opções adicionadas.

### Tela da Roleta (`roulette_screen.dart`)

- **Descrição**:
  - Exibe a roleta com as opções adicionadas.
  - Gira a roleta e exibe o resultado do sorteio.

- **Principais Componentes**:
  - `FortuneWheel`: Widget que exibe a roleta animada.
  - `StreamController`: Controla o índice selecionado na roleta.
  - `AlertDialog`: Exibe o resultado do sorteio.

---

## 🔧 Personalização

- **Cores e Temas**:
  - O tema principal do aplicativo utiliza a cor `teal`. Você pode alterar isso no arquivo `main.dart` na configuração do `ThemeData`.

- **Animação da Roleta**:
  - O tempo de rotação da roleta pode ser ajustado no método `startRoulette` em `roulette_screen.dart`.

---

## 🛠️ Próximos Passos

- **Melhorias Visuais**:
  - Adicionar animações mais sofisticadas para a roleta.
  - Melhorar o design da interface do usuário.

- **Funcionalidades Adicionais**:
  - Permitir salvar as opções para sorteios futuros.
  - Adicionar suporte a diferentes estilos de roleta.

---

## 🤝 Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

Desenvolvido usando Flutter. 🎯
