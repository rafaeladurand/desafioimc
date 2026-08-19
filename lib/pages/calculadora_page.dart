import 'package:desafioimc/models/imc.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();

  List<IMC> listaIMC = [];

  void calcularIMC() {
    double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text);

    IMC imc = IMC(peso, altura);

    setState(() {
      listaIMC.add(imc);
    });

    pesoController.clear();
    alturaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculadora de IMC")),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),

        child: Column(
          children: [
            TextField(
              controller: pesoController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                labelText: 'Peso',
                hintText: 'Digite o seu peso',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: alturaController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                labelText: 'Altura',
                hintText: 'Digite a sua altura',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: calcularIMC,
              child: const Text("Calcular IMC"),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: listaIMC.length,
                itemBuilder: (context, index) {
                  IMC imc = listaIMC[index];

                  return Card(
                    child: ListTile(
                      title: Text('IMC: ${imc.calcular().toStringAsFixed(2)}'),
                      subtitle: Text(
                        'Peso: ${imc.peso} kg | '
                        'Altura: ${imc.altura} m\n'
                        'Classificação: ${imc.classificar()}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
