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

  double get imc => peso / (altura * altura);

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
}
