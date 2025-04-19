import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'dart:math';
import 'dart:async';

class RouletteScreen extends StatefulWidget {
  final List<String> options;
  final bool autoStart; // Novo parâmetro para iniciar automaticamente

  const RouletteScreen({
    super.key,
    required this.options,
    this.autoStart = false,
  });

  @override
  State<RouletteScreen> createState() => _RouletteScreenState();
}

class _RouletteScreenState extends State<RouletteScreen> {
  final StreamController<int> controller = StreamController<int>();
  bool isSpinning = false;
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    // Inicia o sorteio automaticamente se autoStart for verdadeiro
    if (widget.autoStart) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        startRoulette();
      });
    }
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  void startRoulette() {
    if (widget.options.isEmpty) return;

    setState(() {
      isSpinning = true;
    });

    // Gera um índice aleatório para o ganhador
    final randomIndex = Random().nextInt(widget.options.length);
    selectedIndex = randomIndex;

    // Inicia a rotação da roleta
    controller.add(randomIndex);
  }

  void showResult() {
    if (selectedIndex == null) return;

    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text("Resultado"),
            content: Text(
              "A opção sorteada foi: ${widget.options[selectedIndex!]}",
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("OK"),
              ),
            ],
          ),
    );

    setState(() {
      isSpinning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Roleta"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Roleta animada
            SizedBox(
              width: 300,
              height: 300,
              child: FortuneWheel(
                selected: controller.stream,
                items:
                    widget.options
                        .map((option) => FortuneItem(child: Text(option)))
                        .toList(),
                onAnimationEnd:
                    showResult, // Exibe o resultado ao final da animação
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: isSpinning ? null : startRoulette,
              child: const Text("Girar Roleta"),
            ),
          ],
        ),
      ),
    );
  }
}
