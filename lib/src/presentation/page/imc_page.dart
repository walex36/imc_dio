import 'package:flutter/material.dart';
import 'package:imc_dio/src/domain/entities/pessoa_entity.dart';
import 'package:imc_dio/src/presentation/controller/imc_controller.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({super.key});

  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _alturaController = TextEditingController();
  final _pesoController = TextEditingController();

  Pessoa? _pessoa;

  bool _pessoaValida() => _pessoa != null && _pessoa!.imcEnum != null;

  final _imcController = ImcController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular IMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    key: const Key('tfName'),
                    controller: _nameController,
                    enabled: !_pessoaValida(),
                    decoration: const InputDecoration(
                      labelText: 'Qual seu nome?',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, informe seu nome';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    key: const Key('tfHeight'),
                    controller: _alturaController,
                    enabled: !_pessoaValida(),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Qual sua altura?',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, informe sua altura';
                      } else if (getDoubleTryParse(value) == null) {
                        return 'Por favor, informe uma altura válida';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    key: const Key('tfWeight'),
                    controller: _pesoController,
                    enabled: !_pessoaValida(),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Qual seu peso?',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, informe sua altura';
                      } else if (getDoubleTryParse(value) == null) {
                        return 'Por favor, informe um peso válido';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      key: const Key('btnCalculate'),
                      onPressed: _onPressedCalculate,
                      child: Text(_pessoa == null ? 'Calcular' : 'Limpar'),
                    ),
                  ),
                ],
              ),
            ),
            if (_pessoaValida()) _buildResult(),
          ],
        ),
      ),
    );
  }

  double? getDoubleTryParse(String value) {
    return double.tryParse(value.replaceAll(',', '.'));
  }

  _onPressedCalculate() {
    setState(() {
      if (!_pessoaValida()) {
        if (_formKey.currentState!.validate()) {
          double altura = getDoubleTryParse(_alturaController.text) ?? 0;
          double peso = getDoubleTryParse(_pesoController.text) ?? 0;

          _pessoa = _imcController.calculate(
            name: _nameController.text,
            peso: peso,
            altura: altura,
          );
        }
      } else {
        _nameController.clear();
        _alturaController.clear();
        _pesoController.clear();
        _pessoa = null;
        FocusScope.of(context).requestFocus(FocusNode());
      }
    });
  }

  _buildResult() {
    final pessoa = _pessoa!;
    return Expanded(
      child: Center(
        child: Card(
          key: const Key('cardResult'),
          color: pessoa.imcEnum!.color,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  pessoa.imcEnum!.icon,
                  color: Colors.black,
                  size: 50,
                ),
                Text(
                  pessoa.imcEnum!.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '${pessoa.nome} seu imc é ${pessoa.imc.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
