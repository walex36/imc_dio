import 'package:imc_dio/src/domain/enum/imc_enum.dart';

class Pessoa {
  final String nome;
  final double peso;
  final double altura;
  final ImcEnum? imcEnum;

  Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
    this.imcEnum,
  });

  double get imc => double.parse((peso / (altura * altura)).toStringAsFixed(2));

  Pessoa copyWith({
    String? nome,
    double? peso,
    double? altura,
    ImcEnum? imcEnum,
  }) {
    return Pessoa(
      nome: nome ?? this.nome,
      peso: peso ?? this.peso,
      altura: altura ?? this.altura,
      imcEnum: imcEnum ?? this.imcEnum,
    );
  }

  bool equals(Pessoa pessoa) {
    return nome == pessoa.nome &&
        peso == pessoa.peso &&
        altura == pessoa.altura &&
        imcEnum == pessoa.imcEnum;
  }
}
