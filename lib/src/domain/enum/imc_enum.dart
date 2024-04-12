import 'package:flutter/material.dart';

enum ImcEnum {
  magrezaGrave,
  magrezaModerada,
  magrezaLeve,
  saudavel,
  sobrepeso,
  obesidadeGrau1,
  obesidadeGrau2,
  obesidadeGrau3;

  String get title {
    switch (this) {
      case ImcEnum.magrezaGrave:
        return 'Magreza Grave';
      case ImcEnum.magrezaModerada:
        return 'Magreza Moderada';
      case ImcEnum.magrezaLeve:
        return 'Magreza Leve';
      case ImcEnum.saudavel:
        return 'Saudável';
      case ImcEnum.sobrepeso:
        return 'Sobrepeso';
      case ImcEnum.obesidadeGrau1:
        return 'Obesidade Grau I';
      case ImcEnum.obesidadeGrau2:
        return 'Obesidade Grau II';
      case ImcEnum.obesidadeGrau3:
        return 'Obesidade Grau III';
    }
  }

  Color get color {
    switch (this) {
      case ImcEnum.magrezaGrave:
        return Colors.red;
      case ImcEnum.magrezaModerada:
        return Colors.orange;
      case ImcEnum.magrezaLeve:
        return Colors.lime;
      case ImcEnum.saudavel:
        return Colors.green;
      case ImcEnum.sobrepeso:
        return Colors.lime;
      case ImcEnum.obesidadeGrau1:
        return Colors.orange;
      case ImcEnum.obesidadeGrau2:
        return Colors.redAccent;
      case ImcEnum.obesidadeGrau3:
        return Colors.red;
    }
  }

  IconData get icon {
    switch (this) {
      case ImcEnum.magrezaGrave:
        return Icons.sentiment_very_dissatisfied;
      case ImcEnum.magrezaModerada:
        return Icons.sentiment_dissatisfied;
      case ImcEnum.magrezaLeve:
        return Icons.sentiment_satisfied;
      case ImcEnum.saudavel:
        return Icons.sentiment_very_satisfied;
      case ImcEnum.sobrepeso:
        return Icons.sentiment_satisfied;
      case ImcEnum.obesidadeGrau1:
        return Icons.sentiment_neutral;
      case ImcEnum.obesidadeGrau2:
        return Icons.sentiment_dissatisfied;
      case ImcEnum.obesidadeGrau3:
        return Icons.sentiment_very_dissatisfied;
    }
  }

  factory ImcEnum.fromValueToEnum(double value) {
    if (value < 16) {
      return ImcEnum.magrezaGrave;
    } else if (value < 17) {
      return ImcEnum.magrezaModerada;
    } else if (value < 18.5) {
      return ImcEnum.magrezaLeve;
    } else if (value < 25) {
      return ImcEnum.saudavel;
    } else if (value < 30) {
      return ImcEnum.sobrepeso;
    } else if (value < 35) {
      return ImcEnum.obesidadeGrau1;
    } else if (value < 40) {
      return ImcEnum.obesidadeGrau2;
    } else {
      return ImcEnum.obesidadeGrau3;
    }
  }
}
